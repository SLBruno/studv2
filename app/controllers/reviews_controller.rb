class ReviewsController < ApplicationController

    def create
        @review = Review.create(review_params)
        curso = @review.curso
        
        redirect_to curso
        
    end
    
    def destroy
        @review = Review.find(params[:id])
        curso = @review.curso
        @review.destroy
        
        redirect_to curso
    end 
    
    private
        def review_params
            params.require(:review).permit(:star, :comment, :curso_id, :user_id)
        end
    
end 