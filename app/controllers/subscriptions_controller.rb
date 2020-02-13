class SubscriptionsController < ApplicationController

    def new 
        @subscription = Subscription.new
    end 

    def create 
        @subscription = Subscription.create(subscription_params)
        if @subscription.valid?
         redirect_to user_path(@subscription.user)
        else 
            flash[:suberror] = "You're already subscribed to that gym"
            redirect_to user_path(@subscription.user)
        end 
    end 

    def destroy

        @subscription = Subscription.find(params[:id])
        @subscription.destroy
        redirect_to user_path(@subscription.user)
    end

    private 
    
    def subscription_params
        params.require(:subscription).permit(:user_id, :gym_id)
    end
end     