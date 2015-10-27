class HomeController < ApplicationController
  def index
    active_projects
  end

  def about
  end

  def how_it_works
  end

  private
  def active_projects
    @projects = []
    Project.all.each do |project|
      if project.project_approval = 'approved' && project.funding_status != 'funded'
        @projects.push(project)
      end
    end
  end
end
