class SubscriptionsController < ApplicationController

    def new 
        @subscription = Subscription.new
    end 

    def create 
        @subscription = Subscription.create(subscription_params)
<<<<<<< HEAD
        redirect_to new_user_path
=======
        redirect_to user_path(@subscription.user)
>>>>>>> 7700e4f54d6627496fc19759b59eb860871ef78a
    end 

    private 
    
    def subscription_params
        params.require(:subscription).permit(:user_id, :gym_id)
    end
end     