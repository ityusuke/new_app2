class UsersController < ApplicationController
before_action:check_user_login?, only:[:show]
  def show
     @user=User.find_by(id: params[:id])
     @tours=Tour.where(user_id: @user.id)
  end
  
  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following.page(params[:page])
    render 'follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers.page(params[:page])  
    render 'follow'
  end
  
  def favorite
    @tours=current_user.favtours.page(params[:page])
  end
end
