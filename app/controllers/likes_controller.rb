class LikesController < ApplicationController
# before_action:check_user_login?, only:[:create,:destroy]
    
#     def create
#       binding.pry
#       @tour=Tour.find(params[:id])
#       @like = current_user.likes.create(tour_id: @tour.id)
#         redirect_back(fallback_location: root_path)
#     end
    
#     def destroy
#   @like = current_user.likes.find_by(tour_id: @tour.id)
#   @like.destroy
#     redirect_back(fallback_location: root_path)
#     end
end
