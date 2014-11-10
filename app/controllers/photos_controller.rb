class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def create_row
    @photo = Photo.new
    @photo.source = params[:the_source]
    @photo.caption = params[:the_caption]
    @photo.save

    @headding = "Photo Created Successfully"
    render "show"
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    @photo = Photo.find(params[:id])
    @photo.source = params[:the_source]
    @photo.caption = params[:the_caption]
    @photo.save

    @headding = "Photo Updated"
    render "show"
  end

  def show
    @photo = Photo.find(params[:id])
    @headding = "Photo Details"
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    @headding = "Photo Deleted"
    render "show"
  end

end
