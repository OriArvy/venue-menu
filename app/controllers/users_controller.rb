class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = user.all
  end

  def show
  end

  def new
    @user = user.new
  end

  def create
    @user = user.new(user_params)
    @user.save
    redirect_to users_path
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(user)
  end

  def destoy
    @user.delete
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :address, :description)
  end

  def find_user
    @user = user.find(params[:id])
  end
end
