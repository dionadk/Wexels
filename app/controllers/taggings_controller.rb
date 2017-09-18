class TaggingsController < ApplicationController
  def index
    @taggings = Tagging.all
  end

  def new
    @tagging = Tagging.new
  end

  def add_tagging
    Tagging.create(tagging_params)
    redirect_to pics_path
  end


  private
  def tagging_params
    params.require(:tagging).permit(:pic_id, :tag_id)
  end

end
