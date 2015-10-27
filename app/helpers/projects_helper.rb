module ProjectsHelper
  def percent_complete(project)
    (project.total_donated/project.total_requested*100).ceil
  end

  def percent_remaining(project)
    100 - percent_complete(project)
  end

  def days_remaining(project)
    (project.expires_on - Time.zone.now).to_i / 1.day
  end
end
