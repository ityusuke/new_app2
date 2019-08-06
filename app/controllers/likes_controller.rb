class LikesController < ApplicationController
before_action:check_user_login?, only:[:create,:destroy]
    
    def create
      @tour=Tour.find_by(id: params[:tour_id])
      @like =Like.create(user_id: current_user.id,tour_id: @tour.id)
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
  @like = current_user.likes.find_by(tour_id: params[:tour_id])
  @like.destroy
    redirect_back(fallback_location: root_path)
    end
end
