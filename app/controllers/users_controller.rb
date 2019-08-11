class UsersController < ApplicationController
before_action:check_user_login?, only:[:show]

  def show
    user_find_by_id
    @tours=Tour.where(user_id: @user.id)
  end
  
  def followings
    user_find_by_id
    @users = @user.followings.page(params[:page])
    render 'follow'
  end

  def followers
    user_find_by_id
    @users = @user.followers.page(params[:page])  
    render 'follow'
  end
  
  def favorite
    @tours=current_user.favtours.page(params[:page])
  end
private
  def user_find_by_id
    @user=User.find_by(id:params[:id])
  end
  
end
