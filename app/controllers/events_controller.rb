class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show, :update]
  #before_action :users, only: [:show]

  def index
  end

  def new
    @event = Event.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
      else 
      render :edit
    end
  end

  def show
      @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path
end

  def create
    @event = Event.new(event_params)
    @event.admin = current_user
    if @event.save
      redirect_to @event
    else
      render ('new')
      end  
    end

    private

    def event_params
      params.require(:event).permit(:title, :start_date, :description, :price, :location, :avatar) 
    end
  
end