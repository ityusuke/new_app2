class ApplicationController < ActionController::Base
 # protect_from_forgery with: :exception
 before_action:search?
 
  protected
 
 
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :username
      devise_parameter_sanitizer.for(:sign_up) << :userimage
      devise_parameter_sanitizer.for(:account_update) << :username
      devise_parameter_sanitizer.for(:account_update) << :userimage
    end
    
    def search?
  
        if params[:search]
             @search=Tour.page(params[:page]).search(params[:search])
            redirect_to "/search"
           
        end
    end
    def check_user_login?
        unless current_user
            flash.now[:notice]="ログインしてください"
            redirect_back(fallback_location: root_path)
        end
    end
end
