class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new(user_params[:user])
  end

  def create
    @user = User.create(user_params[:user])

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      raise
      redirect_to '/signup'
    end
  end

  private
  def users
    @users = User.all
  end

  def user_params
    params.permit(user: [:username, :password, :password_confirmation, :first_name, :last_name, :email, :donor])
  end
end
