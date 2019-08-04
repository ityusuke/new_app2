class FavoritesController < ApplicationController
    
    def create
        @favorite = Favorite.new(user_id: current_user.id,tour_id: params[:tour_id])
        @favorite.user_id = current_user.id
        @favorite.tour_id = params[:tour_id]
        if @favorite.save
            flash.now[:notice]="お気に入りしました"
            redirect_back(fallback_location: root_path)
        else
            flash.now[:notice]="お気に入りできませんでした"
            redirect_back(fallback_location: root_path)
        end
    end
    
    def destroy
        @tour=Tour.find(params[:id])
        current_user.unfav(@tour)
        flash.now[:notice]="お気に入りしました"
        redirect_back(fallback_location: root_path)
    end

end
