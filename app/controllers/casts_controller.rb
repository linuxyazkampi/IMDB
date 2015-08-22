class CastsController < ApplicationController
  before_action :set_cast, only: [:show,:destroy,:update,:edit]
  def index
    @casts = Cast.all
  end
  def new
    @cast = Cast.new
  end
  def show
  @cast = Cast.find(params[:id])
  end
  def create
    @cast = Cast.create(cast_params)
    redirect_to @cast
  end
  def destroy
    @cast.destroy
    respond_to do |format|
      format.html { redirect_to @cast, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def set_cast
    @cast = Cast.find(params[:id])
  end
  def cast_params
    params.require(:cast).permit(:first_name, :last_name, :age, :bio, :photo, :detail)
  end
end