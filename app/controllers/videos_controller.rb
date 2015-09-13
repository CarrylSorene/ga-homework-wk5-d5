class VideosController < ApplicationController

  def index
    @videos = Video.all.order('created_at DESC')
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.new(video_params)
    if video.save
      flash[:notice] = 'Video created successfully!'
      redirect_to video
    else
      flash.now[:notice] = 'Failed to create video. Please try again.'
      render :new
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    video = Video.find(params[:id])
    if video.update(video_params)
      redirect_to video
    else
      render :edit
    end
  end

  def destroy
    video = Video.find(params[:id]).destroy
    redirect_to_root_path
  end

  private
  def video_params
    params.require(:video).permit(:title, :category)
  end

end