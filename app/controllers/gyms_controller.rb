class GymsController < ApplicationController

    def index 
        @gyms = Gym.all
    end

    def show 
        @gym = Gym.find(params[:id])
        @users = User.all
        @subscription = Subscription.new
    end
end
