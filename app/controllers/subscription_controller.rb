class SubscriptionController < ActionController::Base
 
    def show
        subscription = Subscription.find(params[:id])
    end
    
    
end
