class CommentsController < ApplicationController
  before_action:check_user_login?, only:[:create,:destroy]
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.tour_id = params[:tour_id]
    if @comment.save
        flash.now[:notice]="コメントしました"
        render :linking 
    else
        flash.now[:notice]="コメントに失敗しました"
        redirect_back(fallback_location: root_path)
    end
    end
    
    def destroy
       @comment=Comment.find(params[:id])
      if @comment.destroy  
        render :linking
      end
    end
    
      private
      
      def comment_params
        params.require(:comment).permit(:content,:tour_id, :user_id)
      end

end
