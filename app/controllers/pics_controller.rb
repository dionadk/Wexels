class PicsController < ApplicationController

  def index
    @pics = Pic.all
  end

  def new
    @pic = Pic.new
  end


  def create
    @pic = Pic.create!(pic_params)
    redirect_to pic_path(@pic)

  end

  def edit
    @pic = Pic.find(params[:id])
  end

  def update
    @pic = Pic.find(params[:id])
    @pic.update(pic_params)
    redirect_to pic_path(@pic)
  end

  def destroy
    @pic = Pic.find(params[:id])
    @pic.destroy
    redirect_to pics_path
  end

  def show
    @pic = Pic.find(params[:id])
    @comment = @pic.comments
    @tags = Tag.all
    @taggings = Tagging.joins(:tag, :pic)
  end

  private
def pic_params
  params.require(:pic).permit(:title, :body, :img_url, :uploaded_by)
end


end
