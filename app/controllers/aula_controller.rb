class AulaController < ApplicationController
    before_action :authenticate_user!
    
    def show
      curso = Curso.find(params[:curso_id])
      @aulas = curso.aulas.order(:tag)
            
      joined = false
        
      if !current_user.nil? && !current_user.cursos.nil?
          joined = current_user.cursos.include?(curso)
      end 
        
      if joined  
        
          @aula = @aulas.find(params[:id])
          
          @next_aula = @aula.next
          @prev_aula = @aula.prev
          
      else
          flash[:notice]= "Você não tem permissão para acessar esta página, faça login!"
          redirect_to curso
      end 
end
end 
