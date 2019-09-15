# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  include SessionsHelper

  def set_search
    @search = Tour.ransack(params[:q])
    @search_tours = @search.result.page(params[:page])
  end

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
