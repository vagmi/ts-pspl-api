class ProjectsController < ApplicationController
  def index
    @client= Client.find(params[:client_id])
    render json:  @client.projects
  end
  def create
    @client= Client.find(params[:client_id])
    @project= @client.projects.create(project_params)
    render json:  @project
  end
  def update
    @project= Project.find(params[:id])
    @project= @project.update_attributes(project_params)
    render json:  @project
  end
  def show
    @project = Project.find(params[:id])
    render json:  @project
  end
  def destroy
    @project= Project.find(params[:id])
    @project.destroy!
    render head: :ok
  end
  private
  def project_params
    params.require(:project).permit(:name,:client_id)
  end
end
