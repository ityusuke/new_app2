# frozen_string_literal: true
class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  include SessionsHelper
  #検索機能
  def set_search
    @search = Tour.ransack(params[:q])
    @search_tours = @search.result.page(params[:page])
  end

#ログイン有無によるアクセス制限
  def check_user_login?
    unless current_user
      flash.now[:notice] = 'ログインしてください'
      redirect_back(fallback_location: root_path)
    end
  end

 
end
