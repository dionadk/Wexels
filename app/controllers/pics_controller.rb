class PicsController < ApplicationController

  def index
    @pics = Pic.all
    @tags = params[:name] == nil || params[:name] == "" ? nil : Tag.where(:name => params[:name])
    @likes = Like.all
  end

#   def index
#   @pics = Pic.search(params[:name])
# end


# def index
#   @pics = Pic.all
#   if params[:search]
#     @pics = Pic.search(params[:search]).order("created_at DESC")
#   else
#     @pics = Pic.all.order("created_at DESC")
#   end
# end
def add_like
  @users = User.all
  @pic = Pic.find(params[:id])
  @like = Like.create(user: current_user,pic: @pic)
  redirect_to pic_path(@pic)
end

def remove_like
  @pic = Pic.find(params[:id])
  Like.find_by(user: current_user,pic: @pic).destroy
  redirect_to pic_path(@pic)
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
    if @pic.user != current_user
    flash[:alert] = "Only signed in users can edit"
    redirect_to pic_path(@pic)
  end
  end

  def update
    @pic = Pic.find(params[:id])
    if @pic.user === current_user
    @pic.update(pic_params)
    else
      flash[:alert] = "Only signed in users can edit"
    end
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
    @tag =  @pic.tags
    @like = Like.find_by(user: current_user,pic: @pic)
  end

  private
def pic_params
  params.require(:pic).permit(:title, :body, :img_url, :uploaded_by)
end


end
