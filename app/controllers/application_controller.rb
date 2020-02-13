class ApplicationController < ActionController::Base

    before_action :setup_notification_stuff, :setup_auth_stuff

    private 
    
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    
    helper_method :current_user

    def setup_notification_stuff
      @errors = flash[:errors]
      @notification = flash[:notification]
    end
  
    def setup_auth_stuff
      @logged_in = logged_in?
      @logged_in_user = User.find(current_user.id) if logged_in?
    end

    def log_out_user!
      session.delete(:user_id)
    end
  
    def log_in_user(user_id)
      session[:user_id] = user_id
    end
  
    def logged_in?
      !!current_user
    end

end