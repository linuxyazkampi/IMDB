class CompaniesController < ApplicationController
  before_action :set_company, only: [:show,:update,:edit,:destroy]
  def index
    @companies = Company.all
  end
  def show
    @movies = @company.movies
    if @movies.kind_of?(Array)
      @movies_array = @movies.map{ |movie| [" #{movie.id} .) #{movie.title} ",movie.id] }
    else
      @movies_array = @movies
    end
  end

  def new
    @movies = Movie.all
    @movies_array = @movies.map{ |movie| [" #{movie.id} .) #{movie.title} ",movie.id] }
    @company = Company.new()
  end
  def create
    @company = Company.create(company_params)
    CompanyMovie.create(movie_id: params[:movie_id], company_id: @company.id)
    redirect_to @company
  end
  def edit
    @movies = Movie.all
    @company_movies = @company.movies
  end
  def update
    @company.update(company_params)
    redirect_to @company
  end
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to @company, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def set_company
    @company = Company.find(params[:id])
  end
  def company_params
    params.require(:company).permit(:name, :detail, :movie_id)
  end
end