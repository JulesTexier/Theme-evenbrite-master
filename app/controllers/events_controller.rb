class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :show]


  def index
  end

  def new
  end

  def create
  end

  def show
      @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(title: params['title'], start_date: params['start_date'], description: params['description'],price: params['price'], admin: current_user)


    if @event.save
      redirect_to @event
      
    else
      render ('new')
      end  
    end  
end