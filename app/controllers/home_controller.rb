class HomeController < ApplicationController
  def index
    newest_projects
    ending_soon
  end

  def about
  end

  def how_it_works
  end

  private

  def newest_projects
    @newest_projects = Project.where('project_approval = ? AND funding_status = ?', 'approved', 'not funded').order('created_at')
  end

  def ending_soon
    @ending_soon = Project.where('project_approval = ? AND funding_status = ?', 'approved', 'not funded').order('expires_on')
  end
end
