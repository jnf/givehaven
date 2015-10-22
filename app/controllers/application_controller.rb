class ApplicationController < ActionController::Base
  before_action :current_user, :total_shelters, :total_donors, :total_projects, :total_donated, :total_volunteers
  protect_from_forgery with: :exception

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in
    redirect_to login_path unless current_user
  end

  def total_shelters
    @organization_count = Organization.count
  end

  # def authorize_user
  #   redirect_to root_path unless @current_user.username == params[:username]
  # end

  def total_volunteers
    @volunteer_count = Volunteer.count
  end

  def total_donors
    @donor_count = User.where(donor: true).count
  end

  def total_projects
    @approved_project_count = Project.where(project_approval: 'approved').count
  end

  def total_donated
    @all_gifts_approved = Gift.where(payment_status: 'approved')
    @approved_gift_total = 0
    @all_gifts_approved.each do |gift|
      @approved_gift_total += gift.amount
    end
  end
end
