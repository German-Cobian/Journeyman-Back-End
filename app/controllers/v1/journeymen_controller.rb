class V1::JourneymenController < ApplicationController
# before_action :authenticate_user!

  def index
    @journeymen = Journeyman.all

    render json: JourneymanSerializer.new(@journeymen).serializable_hash[:data], status: :ok
  end

  def show
    @journeyman = Journeyman.find_by(id: params[:id])

    if journeyman.nil?
      render status: 404, json: { error: 'Journeyman not found' }.to_json
    else
      render json: JourneymanSerializer.new(@journeyman).serializable_hash[:data][:attributes], status: :ok
    end
  end

  def create
    @journeyman = Journeyman.new(journeyman_params)

    if @journeyman.save
      render json: JourneymanSerializer.new(@yacht).serializable_hash[:data][:attributes], status: :created
    else
      render status: 500, json: { error: 'Journeyman could not be created' }.to_json
    end
  end

  def destroy
    journeyman = Journeyman.find_by(id: params[:id])

    if journeyman.nil?
      render status: 404, json: { error: 'Journeyman not found' }.to_json
    else
      journeyman.destroy
      render json: { message: 'Journeyman deleted' }.to_json
    end
  end

  private

  def journeyman_params
    params.require(:journeyman).permit(:name, :skill, :country, :city, :price, :image)
  end
end