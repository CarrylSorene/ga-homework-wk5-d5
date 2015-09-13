class YoutubersController < ApplicationController

  def index
    @youtubers = Youtuber.all.order('created_at DESC')
  end

  def new
    @youtuber = Youtuber.new
  end

  def create
    youtuber = Youtuber.new(youtuber_params)
    if youtuber.save
      flash[:notice] = 'YouTuber created successfully!'
      redirect_to youtuber
    else
      flash.now[:notice] = 'Failed to create YouTuber. Please try again.'
      render :new
    end
  end

  def show
    @youtuber = Youtuber.find(params[:id])
  end

  def edit
    @youtuber = Youtuber.find(params[:id])
  end

  def update
    youtuber = Youtuber.find(params[:id])
    if youtuber.update(youtuber_params)
      redirect_to youtuber
    else
      render :edit
    end
  end

  def destroy
    youtuber = Youtuber.find(params[:id]).destroy
    redirect_to_root_path
  end

  private
  def youtuber_params
    params.require(:youtuber).permit(:name)
  end

end