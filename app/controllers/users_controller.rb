class UsersController < ApplicationController
  before_action :is_user?, only: [:show]
  
  def index
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    user_params = params.require(:user).permit(:first_name, :last_name, :description)
    if @user.update(user_params)
      redirect_to @user
      else 
      render :edit
    end
end

    private

  def is_user?
    @user = User.find(params[:id])
    unless current_user == @user
      flash[:alert] = "action impossible !"
      redirect_to "/"
    end
  end


end
