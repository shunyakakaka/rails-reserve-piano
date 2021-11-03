class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    binding.pry
    @user = User.new()
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "#{@user}さんで登録しました!"
      redirect_to root_path
    else
      flash[:user] = @user
      flash[:error_message] = @user.errors.full_messages
      redirect_to new_user_path  
    end
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
