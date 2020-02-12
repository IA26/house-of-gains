class SubscriptionsController < ApplicationController

    def new 
        @subscription = Subscription.new
    end 

    def create 
        @subscription = Subscription.create(subscription_params)
        redirect_to new_user_path
    end 

    private 
    
    def subscription_params
        params.require(:subscription).permit(:user_id, :gym_id)
    end
end     