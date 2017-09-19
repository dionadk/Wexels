class TaggingsController < ApplicationController
  def index
    @taggings = Tagging.all
  end

  def new
    @pic = Pic.find(params[:pic_id])
    @tagging = @pic.taggings.new
  end

  def create
    @pic = Pic.find(params[:pic_id])
    @tag = Tag.find(params[:tag_id])
    @pic.create(tagging_params)
    redirect_to pics_path
  end


  private
  def tagging_params
    params.require(:tagging).permit(:pic_id, :tag_id)
  end

end
