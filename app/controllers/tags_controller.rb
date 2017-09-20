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

  def edit
    @pic = Pic.find(params[:pic_id])
    @tag = @pic.tags.find(params[:id])
  end

  def update
    @pic = Pic.find(params[:pic_id])
    @tag = Tag.find(params[:id])
    @tag.update(tag_params)
    redirect_to pic_path(@pic)

  end

    def destroy
      @pic = Pic.find(params[:pic_id])
      @tag = Tag.find(params[:id])
      @tag.destroy
      redirect_to pic_path(@pic)
    end


  private
def tag_params
  params.require(:tag).permit(:name)
end

end
