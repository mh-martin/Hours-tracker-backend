class TrackedHoursController < ApplicationController
  before_action :get_project
  def index
    @tracked_hours = @project.tracked_hours
    render json: @tracked_hours
  end

  def show
    @tracked_hour = TrackedHour.find(params[:id])
    render json: @tracked_hour
  end

  def create
    @tracked_hour = @project.tracked_hours.build(tracked_hour_params)
    @tracked_hour.save
  end

  private
    def get_project
      @project = Project.find(params[:project_id])
    end

    def tracked_hour_params
      params.permit(:person_name, :hours, :classification, :project_id)
    end
end
