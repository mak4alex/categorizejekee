class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    10.times { @project.categories.build }
  end

  def create
    project = Project.create(project_params)
    redirect_to projects_url
  end

private
  def project_params
    params.require(:project).permit(:name, categories_attributes: [:name])
  end
end
