# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception


  def set_search
    @search = Tour.ransack(params[:q])
    @search_tours = @search.result.page(params[:page])
  end

  protected

  # def update_resource(resource, params)
  #   resource.update_without_password(params)
  # end

  # # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up) do |u|
  #     u.permit(:username,
  #             :email, :password, :password_confirmation, :user_image)
  #   end
  # end

  # # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update) do |u|
  #     u.permit(:username,
  #             :email, :password, :password_confirmation, :user_image)
  #   end
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end


  def check_user_login?
    unless current_user
      flash.now[:notice] = 'ログインしてください'
      redirect_back(fallback_location: root_path)
    end
  end
end
