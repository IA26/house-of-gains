class UsersController < ApplicationController

    def index 
    end 
    

    def new 
        @user = User.new    
    end 

   def create
        @user = User.create(user_params)
          if @user.valid?
            redirect_to @user, notice: "Thank you for signing up!"
          else 
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
          end
    end 
    
    def show 
        @user = User.find(params[:id])
        @subscription = Subscription.new
        @gyms = Gym.all
    end 

    private 

    def user_params
        params.require(:user).permit(:name, :password)
    end 

    def subscription_params
      params.require(:subscription).permit(:user_id, :gym_id)
  end

end
