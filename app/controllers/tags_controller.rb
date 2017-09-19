class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def new

    @tag = Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
    # @taggings = Tagging.joins(:tag, :pic)
    @tag.taggings
  end




    def create
      @tag = Tag.create!(tag_params)
      @tagging = Tagging.create(pic_id: @pic,tag_id: @tag)
      redirect_to pics_path

  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)
    redirect_to tag_path(@tag)
  end






  private
def tag_params
  params.require(:tag).permit(:name)
end

end
