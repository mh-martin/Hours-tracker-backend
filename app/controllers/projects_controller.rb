class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    @project = Project.find(params[:id])
    render json: @project
  end

  def create
    @project = Project.create(
      project_name: params[:project_name],
      start_date: DateTime.iso8601(params[:start_date]),
      est_end_date: DateTime.iso8601(params[:est_end_date]),
      completed: false
    )
  end

  def update
    @project = Project.find(params[:id])
    @project.update(
      project_name: params[:project_name],
      start_date: DateTime.iso8601(params[:start_date]),
      est_end_date: DateTime.iso8601(params[:est_end_date]),
      completed: params.has_key?(:completed)
    )
    render json: @project
  end

end
