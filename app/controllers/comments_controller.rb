class CommentsController < ApplicationController
  before_action :set_comment, only: [:show,:edit,:update,:destroy]
  def index
    @comments = Comment.all
  end
  def show

  end
  def new
    @comment = Comment.new()
    @movies = Movie.all
    @movies_array = @movies.map{ |movie| [" #{movie.id} .) #{movie.title} ",movie.id] }
    @users = User.all
    @users_array = @users.map{ |user| [" #{user.id} .) #{user.fist_name} ",user.id] }
  end
  def create
    @comment = Comment.create(comment_params)
    redirect_to @comment
  end
  def edit
    @movies = Movie.all
    @users = User.all
    @movies_array = @movies.map{ |movie| [" #{movie.id} .) #{movie.title} ",movie.id] }
    @users_array = @users.map{ |user| [" #{user.id} .) #{user.fist_name} ",user.id] }
  end
  def update
    if @comment.update(comment_params)
      redirect_to @comment, notice: 'Comment was successfully updated.'
    else
      render :edit
    end
    end
  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to @comment, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def set_comment
    @comment = Comment.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:user_id, :movie_id, :content, :is_active)
  end
end