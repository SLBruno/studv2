class CursosController < ApplicationController
    before_action :authenticate_user!, only: [:list]

    
  def index
    @cursos = Curso.all
  end

  def show
      @curso = Curso.find(params[:id])
      @aulas = @curso.aulas.order(:tag)
      
      @joined = false
      
      if !current_user.nil? && !current_user.cursos.nil?
          @joined = current_user.cursos.include?(@curso)
      end
      
      @users = @curso.users.order('created_at').first(10)
      
      @review = Review.new
      @reviews = @curso.reviews
      @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
  end
    
  def list 
      if !current_user.nil?
          @cursos = current_user.cursos
      end 
  end
    
    def time_sum
        @aulatimesum = @aulas.sum(:time)
    end 
end
