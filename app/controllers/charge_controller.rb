class ChargeController < ApplicationController
    
    before_action :authenticate_user!
    
    def free
        curso = Curso.find(params[:curso_id])
        current_user.subscriptions.create(curso: curso) 
        redirect_to curso
    end
    
    
    
end

