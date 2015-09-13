class SubscribersController < ApplicationController

  def index
    @subscriber = Subscriber.all.order('created_at DESC')
  end

  def new
    @subscriber = Subscriber.new
  end

  def create
    subscriber = Subscriber.new(subscriber_params)
    if subscriber.save
      flash[:notice] = 'Subscriber created successfully!'
      redirect_to subscriber
    else
      flash.now[:notice] = 'Failed to create subscriber. Please try again.'
      render :new
    end
  end

  def show
    @subscriber = Subscriber.find(params[:id])
  end

  def edit
    @subscriber = Subscriber.find(params[:id])
  end

  def update
    subscriber = Subscriber.find(params[:id])
    if subscriber.update
      redirect_to subscriber
    else
      render :edit
    end
  end

  def destroy
    subscriber = Subscriber.find(params[:id]).destroy
    redirect_to_root_path
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:name)
  end

end