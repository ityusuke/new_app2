# frozen_string_literal: true

class CommentsController < ApplicationController
before_action :check_user_login?, only: %i[create destroy]

def create
@comment = current_user.comments.new(comment_params)
@comment.tour_id = params[:tour_id]
if @comment.save
flash.now[:notice] = 'コメントしました'
redirect_back(fallback_location: root_path)
else
flash.now[:notice] = 'コメントに失敗しました'
redirect_back(fallback_location: root_path)
end
end

def destroy
@comment = Comment.find(params[:id]).destroy!
redirect_back(fallback_location: root_path)
end

private

def comment_params
params.require(:comment).permit(:content, :tour_id, :user_id)
end
end
