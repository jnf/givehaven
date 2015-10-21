class OrganizationsController < ApplicationController
  def new
    @organization = Organization.new(organization_params[:organization])
  end

  def create
    @organization = Organization.create(organization_params[:organization])
    @organization.user_id = @current_user.id
    if @organization.save
      redirect_to account_path(@current_user.username)
    else
      redirect_to new_organization_path
    end
  end

  def edit
    locate_organization
  end

  def update
    locate_organization
    @organization.update(organization_params[:organization])
    redirect_to account_path(@current_user.username)
  end

  private

  def locate_organization
    @organization = Organization.find_by(user_id: @current_user.id)
  end

  def organization_params
    params.permit(organization: [:name, :contact_phone, :number_served, :population_served, :annual_funding, :approval_status, :shipping_address_1, :shipping_address_2, :shipping_city, :shipping_state, :shipping_postal_code])
  end

end
