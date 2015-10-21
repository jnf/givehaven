class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def account
    @user = @current_user
    @volunteer = Volunteer.find_by(user_id: @current_user.id)
    @organization = Organization.find_by(user_id: @current_user.id)
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

  def edit
    @user = @current_user
  end

  def update
    @user = @current_user
    @user.update(user_params[:user])
    redirect_to account_path(@user.username)
  end

  private
  def users
    @users = User.all
  end

  def user_params
    params.permit(user: [:username, :password, :password_confirmation, :first_name, :last_name, :email, :donor])
  end
end
