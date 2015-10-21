class VolunteersController < ApplicationController
  def new
    @volunteer = Volunteer.new(volunteer_params[:volunteer])
  end

  def create
    @volunteer = Volunteer.create(volunteer_params[:volunteer])
    @volunteer.user_id = @current_user.id
    if @volunteer.save
      redirect_to account_path(@current_user.username)
    else
      redirect_to new_volunteer_path
    end

  end

  def edit
    locate_volunteer
  end

  def update
    locate_volunteer
    @volunteer.update(volunteer_params[:volunteer])
    redirect_to account_path(@current_user.username)
  end

  private

  def locate_volunteer
    @volunteer = Volunteer.find_by(user_id: @current_user.id)
  end

  def volunteer_params
    params.permit(volunteer: [:role, :bio, :approval_status])
  end

end
