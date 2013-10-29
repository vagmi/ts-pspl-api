class ClientsController < ApplicationController
  def index
    render json: Client.all
  end
  def create
    @client = Client.create(client_params)
    respond_with @client
  end
  def update
    @client= Client.find(params[:id])
    @client = @client.update_attributes(client_params)
    respond_with @client
  end
  def show
    @client= Client.find(params[:id])
    respond_with @client
  end
  def destroy
    @client= Client.find(params[:id])
    respond_with @client
  end
  private
  def client_params
    params.require(:client).permit(:name,:email)
  end
end
