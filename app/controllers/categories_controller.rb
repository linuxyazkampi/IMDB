class CategoriesController < ApplicationController
  before_action :set_category, only: [:show,:destroy,:edit,:update]
  def index
    @categories = Category.all
  end
  def show

  end
  def new
    @category = Category.new()
  end
  def create
    @category = Category.create(category_params)
    redirect_to @category #It is redirect to show page
  end
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to @category, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def set_category
    @category = Category.find(params[:id])
  end
  def category_params
    params.require(:category).permit(:title, :description)
  end
end