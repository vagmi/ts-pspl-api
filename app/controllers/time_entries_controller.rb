class TimeEntriesController < ApplicationController
  def index
    @project = Project.find(params[:project_id])
    render json:  @project.time_entries.order("date desc")
  end
  def create
    @project = Project.find(params[:project_id])
    @time_entry = @project.time_entries.build(time_entry_params)
    @time_entry.save
    render json:  @time_entry
  end
  def update
    @time_entry = TimeEntry.find(params[:id])
    @time_entry.update_attributes(time_entry_params)
    render json:  @time_entry
  end
  def show
    @time_entry= TimeEntry.find(params[:id])
    render json:  @time_entry
  end
  def destroy
    @time_entry= TimeEntry.find(params[:id])
    render json:  @time_entry
  end
  private
  def time_entry_params
    params.require(:time_entry).permit(:project_id,:description,
                                       :billable,:minutes)
  end
end
