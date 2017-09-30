class TagsController < ApplicationController

  def index
    @tag = Tag.all
  end

  def new
    @pic= Pic.find(params[:pic_id])
    if @pic.user === current_user
      @tag = @pic.tags.new
    else
      flash[:alert] = "Access denied!!!"
      redirect_to pic_path(@pic)
    end
  end

  def create
    @pic = Pic.find(params[:pic_id])
    @tag = @pic.tags.create!(tag_params.merge(user: current_user))
    redirect_to pic_path(@pic)
  end

  def edit
    @pic = Pic.find(params[:pic_id])
    @tag = @pic.tags.find(params[:id])
    if @pic.user != current_user
      flash[:alert] = "Only '#{@pic.user.email}' can edit"
      redirect_to pic_path(@pic)
    end
  end

  def update
    @pic = Pic.find(params[:pic_id])
    @tag = Tag.find(params[:id])
    if @pic.user === current_user
      @tag.update(tag_params)
    else
      flash[:alert] = "Please sign in to update a tag"
    end
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
