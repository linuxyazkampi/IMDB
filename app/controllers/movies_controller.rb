class MoviesController < ApplicationController
  before_action :set_movie, only: [:show,:edit,:update,:destroy]
  def index
    @movies = Movie.all
  end
  def new
    @movie = Movie.new
    @casts = Cast.all
    @categories = Category.all
  end
  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end
  def show
    @movie = Movie.find(params[:id])
  end
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to @movie, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def edit
    @casts = Cast.all
    @categories = Category.all
  end

  def update
    if @movie.update(movie_params)
      redirect_to @movie
    else
      render 'edit'
    end
  end

  private
  def set_movie
    @movie = Movie.find(params[:id])
  end
  def movie_params
    params.require(:movie).permit(:title, :description,:keywords, :storyline, :techspecs, :detail, director_ids: [], writer_ids: [], actor_ids: [], category_ids: [] )
  end
end