class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
  end

  def edit
  end

  def new
    @project = Project.new(project_params[:project])
    locate_organization
  end

  private

  def locate_project
    @project = Project.find(params[:title])
  end

  def locate_organization
    @organization = Organization.find_by(user_id: @current_user.id)
  end

  def project_params
    params.permit(project: [:title, :description, :essay, :image])
  end
end
