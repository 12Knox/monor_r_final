class LikesController < ApplicationController

  def create
    photo_id = params[:photo_id].to_i
    @like = Like.create(user_id: current_user.id, photo_id: photo_id)
    @likes = Like.where(photo_id: photo_id)
  end

  def destroy
    @like = current_user.likes.find_by(photo_id: params[:photo_id])
    @like.destroy
    @likes = Like.where(photo_id: params[:photo_id])
  end

end
