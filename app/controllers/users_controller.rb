class UsersController < ApplicationController
# before_action :authorize_user, only: [:account, :edit]
before_action :logged_in, only: [:account, :edit]
  def index
    @users = User.all
  end

  def account
    set_user
    set_volunteer
    set_organization
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
      redirect_to signup_path
    end
  end

  def delete
  end

  def destroy
    set_user
    @user.destroy
    if set_volunteer
      @volunteer.destroy
    end
    if set_organization
      @organization.destroy
    end
    redirect_to root_path
  end

  def edit
    set_user
  end

  def update
    set_user
    @user.update(user_params[:user])
    redirect_to account_path(@user.username)
  end

  private
  def users
    @users = User.all
  end

  def set_user
    @user = @current_user
  end

  def set_volunteer
    @volunteer = Volunteer.find_by(user_id: @current_user.id)
  end

  def set_organization
    @organization = Organization.find_by(user_id: @current_user.id)
  end

  def user_params
    params.permit(user: [:username, :password, :password_confirmation, :first_name, :last_name, :email, :donor])
  end
end
