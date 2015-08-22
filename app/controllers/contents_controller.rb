class ContentsController < ApplicationController
  before_action :set_content, only: [:show,:edit,:update,:destroy]
  def index
    @contents = Content.all
  end
  def show

  end
  def new
    @content = Content.new()
  end
  def create
    @content = Content.create(content_params)
    redirect_to @content
  end
  def destroy
    @content.destroy
    respond_to do |format|
      format.html { redirect_to @content, notice: 'Content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
  def set_content
    @content = Content.find(params[:id])
  end
  def content_params
    params.require(:content).permit(:title, :description, :content, :kind)
  end
end