class TiersController < ApplicationController

    def show 
        @subscription = Subscription.find(params[:id])
    end 

    def new 
        @tier = Tier.new
    end 

    def create 
        @tier = Tier.create(tier_params)
        if @tier.valid?
            redirect_to user_path(@tier.subscription)
        else 
            flash[:suberror] = "You're already subscribed to that gym"
            redirect_to user_path(@subscription.user)
        end 
    end 

    def update 
    end 
    
    def destroy 
    end 

    private 

    def tier_params 
        params.require(:person).permit(:name, :subscription_id)
    end 
end
