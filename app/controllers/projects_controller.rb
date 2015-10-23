class ProjectsController < ApplicationController
before_action :logged_in, except: [:index]

  def index
    @projects = Project.all
  end

  def my_projects
    locate_organization
    @projects = Project.where(organization_id: @organization.id)
  end

  # def show
  #   @project = Project.find(params[:title])
  # end

  def edit
    locate_project
    locate_organization
  end

  def new
    @project = Project.new(project_params[:project])
    locate_organization
  end

  def create
    locate_organization
    @project = Project.create(project_params[:project])
    @project.organization_id = @organization.id
    if @project.save
      redirect_to account_path(@current_user.username)
    else
      redirect_to new_project_path
    end
  end

  private

  def locate_project
    @project = Project.find(params[:title])
  end

  def locate_organization
    @organization = Organization.find_by(user_id: @current_user.id)
  end

  def project_params
    params.permit(project: [:title, :description, :essay, :image, :user_id, :ammount])
  end
end
