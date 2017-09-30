class LikesController < ApplicationController
  def add_like
    @users = User.all
    @pic = Pic.find(params[:id])
    @like = Like.create(user: current_user,pic: @pic)
    redirect_to :back
  end

  def remove_like
    Like.find_by(user: current_user,pic: params[:id]).destroy
    redirect_to :back
  end
end
