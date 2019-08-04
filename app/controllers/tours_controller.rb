class ToursController < ApplicationController
  before_action:check_user_login?, only:[:show,:new,:create,:edit,:update,:destroy]
 
  def index
    @tours=Tour.page(params[:page]).search(params[:search])
  end
  
  def show
    @tour=Tour.find_by(id: params[:id])
    @like=Like.new
    @likes = Like.where(tour_id: @tour.id)
    @comment = Comment.new
    @comments = Comment.where(tour_id: @tour.id)
  end
  
  def new
    @tour=Tour.new
  end
  
  def create
    @tour=Tour.new(tour_params)
    @tour.user_id=current_user.id
    if @tour.save
      redirect_to user_path(id: current_user.id)
    else
      render new_tour_path
    end
  end

  def edit
    @tour=Tour.find_by(id:params[:id])
    
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
     @tour=Tour.find_by(id:params[:id])
     @tour.delete
     redirect_to user_path(id: current_user.id)
    
  end
  

    private
    
    def tour_params
      params.require(:tour).permit(:tourname,:tourcontent, :tag_list,
                                   :tour_image1,:tour_image2,:tour_image3)
    end
end
