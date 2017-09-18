class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @pic = Pic.find(params[:pic_id])
    @comment = @pic.comments.new
  end

  def create
    @pic = Pic.find(params[:pic_id])
    @comment = @pic.comments.create!(comment_params.merge(user: current_user))
    redirect_to pic_path(@pic)

  end

  def edit
    @pic = Pic.find(params[:pic_id])
    @comment = @pic.comments.find(params[:id])
  end

  def update
    @pic = Pic.find(params[:pic_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to pic_path(@pic)

  end

    def destroy
      @pic = Pic.find(params[:pic_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
      redirect_to pic_path(@pic)
    end



  private
def comment_params
  params.require(:comment).permit(:name, :content)
end
end
