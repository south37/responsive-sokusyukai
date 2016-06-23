class ProjectsController < ApplicationController
  def index
    @projects = Project.all_projects
  end
end
