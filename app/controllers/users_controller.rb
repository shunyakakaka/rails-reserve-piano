class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new()
  end
  
  def create
    User.create(user_params)
    binding.pry
    redirect_to users_path
  end

  def show
  end

  def edit
  end

  def destory
  end

  private

  def user_params
    params.require(:user).permit(:name, :address, :phone_number)
  end
end
