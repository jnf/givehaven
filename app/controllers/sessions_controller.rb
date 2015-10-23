class SessionsController < ApplicationController

  def new
  end

	def create # logging in
    if identify_user && @user.authenticate(params[:session][:password])
      if @user.activated?
			  session[:user_id] = @user.id
				redirect_to root_url
      else
        message  = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

	private

	def identify_user
		if User.find_by(username: params[:session][:username])
			@user = User.find_by(username: params[:session][:username])
			return true
		else
			flash[:notice] = "We could not locate an account with that username."
			redirect_to login_path
			return
		end
	end

	def authenticate
		if @user.authenticate(params[:session][:password])
			return true
		else
			flash[:error] = "Sorry, your username or password did not match our records."
			redirect_to login_path
			return
		end
	end
end
