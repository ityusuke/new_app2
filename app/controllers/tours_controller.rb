class ToursController < ApplicationController
  before_action:check_user_login?, only:[:show,:new,:create,:edit,:update,:destroy]

  def index
      @tours=Tour.includes(:user).page(params[:page])
  end
  
  def show
    tour_find_by_id
    @like=Like.new
    @likes = Like.where(tour_id: @tour.id)
    @comment = Comment.new
    @comments = Comment.where(tour_id: @tour.id)
  end
  
  def new
    @tour=Tour.new
  end
  
  def create
    if @tour=current_user.tours.new(tour_params).save
      redirect_to user_path(id: current_user.id)
    else
      render new_tour_path
    end
  end

  def edit
    tour_find_by_id
  end

  def update
    @tour=Tour.find_by(tour_params)
    if @tour.update(tour_params)
      redirect_to user_path(id: current_user.id)
    else
      render edit_tour_path
    end

  end
  
  def destroy
     tour_find_by_id
     @tour.delete
     redirect_to user_path(id: current_user.id)
  end
  


    private
    
    def tour_params
      params.require(:tour).permit(:tourname,:tourcontent, :tag_list,
                                   :tour_image1,:tour_image2,:tour_image3)
    end
    
    def tour_find_by_id
      @tour=Tour.find_by(id:params[:id])
    end
end
