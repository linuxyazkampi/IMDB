class MediasController < ApplicationController
  before_action :set_media, only: [:show,:edit,:update,:destroy]
  def index

  end
  def show

  end
  def new

  end
  def create

  end
  private
  def set_media
    @media = Media.find(params[:id])
  end
  def media_params
    params.require(:media).permit()
  end
end