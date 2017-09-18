class PicsController < ApplicationController

  def index
    @pics = Pic.all
  end

  def new
    @pic = Pic.new
  end


  def create
    @pic = current_user.pics.create!(pic_params.merge(user:current_user))
    redirect_to pic_path(@pic)

  end

  def edit
    @pic = Pic.find(params[:id])
    unless @pic.user == current_user
    flash[:alert] = "Only signed-in users can edit"
    redirect_to pics_path
  else
  end
  end

  def update
    @pic = Pic.find(params[:id])
    @pic.update(pic_params)
    redirect_to pic_path(@pic)
  end

  def destroy
    @pic = Pic.find(params[:id])
    if @pic.user == current_user
      @pic.destroy
    else
      flash[:alert] = "Denied!!!"
    end
    redirect_to pics_path
  end

  def show
    @pic = Pic.find(params[:id])
    @comment = @pic.comments
    @tags = Tag.all
    @taggings = Tagging.joins(:tag, :pic)
    @tag = Tag.new
  end

  private
def pic_params
  params.require(:pic).permit(:title, :body, :img_url, :uploaded_by)
end


end
