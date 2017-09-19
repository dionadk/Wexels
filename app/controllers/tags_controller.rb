class TagsController < ApplicationController

  def index
    @tag = Tag.all
    
  end

  def new
    @pic= Pic.find(params[:pic_id])
    @tag = @pic.tags.new
  end

  def create
    @pic = Pic.find(params[:pic_id])
    @tag = @pic.tags.create!(tag_params.merge(user: current_user))
    redirect_to pic_path(@pic)

  end


  private
def tag_params
  params.require(:tag).permit(:name)
end

end
