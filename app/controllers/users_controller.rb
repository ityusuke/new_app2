class UsersController < ApplicationController
before_action:check_user_login?, only:[:show]
  def show
     @user=User.find_by(id: params[:id])
     @tours=Tour.where(user_id: @user.id)
  end
end
