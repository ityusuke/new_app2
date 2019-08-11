module ApplicationHelper
    
        def check_user_login?
      unless current_user
         flash.now[:notice]="ログインしてください"
         redirect_back(fallback_location: root_path)
      end
    end
end
