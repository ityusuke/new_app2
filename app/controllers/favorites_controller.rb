# frozen_string_literal: true

class FavoritesController < ApplicationController
  def create
    @tour = Tour.find_by(id: params[:tour_id])
    if @favorite = Favorite.create(user_id: current_user.id, tour_id: @tour.id)
      flash.now[:notice] = 'お気に入りしました'
      redirect_back(fallback_location: root_path)
    else
      flash.now[:notice] = 'お気に入りできませんでした'
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    @tour = Tour.find(params[:id])
    Favorite.find_by(user_id: current_user.id, tour_id: @tour.id).destroy
    flash.now[:notice] = 'お気に入りしました'
    redirect_back(fallback_location: root_path)
  end
end
