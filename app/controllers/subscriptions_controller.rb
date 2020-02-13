class SubscriptionsController < ApplicationController

    def new 
        @subscription = Subscription.new
    end 

    def create 
        @subscription = Subscription.create(subscription_params)
        redirect_to user_path(@subscription.user)
    end 

    def destroy
        @subscription = Subscription.find(subscription_params[:id])
        @user = @subscription.student 
        @subscription.destroy
        redirect_to @user
    end
        
    private 
    
    def subscription_params
        params.require(:subscription).permit(:user_id, :gym_id)
    end
end     