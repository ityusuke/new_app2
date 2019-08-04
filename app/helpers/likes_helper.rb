module LikesHelper
    def liked?(tour)
        Like.find_by(user_id: current_user.id,tour_id: tour.id)
    end
end
