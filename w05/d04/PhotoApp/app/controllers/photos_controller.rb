class PhotosController < ApplicationController


  before_action :photo_params, :only => [:create, :update]

	def index
    @photos = @current_user.photos
	end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)

    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to @photo
    end
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to '/photos'
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :path)
  end

end
