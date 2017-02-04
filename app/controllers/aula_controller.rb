class AulaController < ApplicationController
    before_action :authenticate_user!

    def show
      curso = Curso.find(params[:curso_id])
      @aulas = curso.aulas.order(:tag)
      @aula = @aulas.find(params[:id])

    @next_aula = @aula.prox
    @prev_aula = @aula.prev

      #joined = true

      #if !current_user.nil? && !current_user.cursos.nil?
      #  joined = current_user.cursos.include?(curso)
      #end

      #if joined

      #    @aula = @aulas.find(params[:id])

      #else
      #    flash[:notice]= "Você não tem permissão para acessar esta página, faça login!"
      #    redirect_to curso
      #end
    end

    def proxima_aula
        ViewedLesson.create(user_id: current_user, aula_id: @aula.id)
        #redirect_to url_for(@next_aula.curso, @next_aula)
    end

     def next_aula_point
      curso = Curso.find(params[:curso_id])
      @aulas = curso.aulas.order(:tag)
      @aula = @aulas.find(params[:id])

      @next_aula= @aula.prox

      redirect_to @aula.prox.curso
      current_user.add_points(@aula.point)
    end
end
