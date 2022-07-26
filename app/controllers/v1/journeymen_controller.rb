class V1::JourneymenController < ApplicationController

  def index
    render json: Journeyman.all.to_json
  end

  def show
    journeyman = Journeyman.find_by(id: params[:id])

    if journeyman.nil?
      render status: 404, json: { error: 'Journeyman not found' }.to_json
    else
      render json: journeyman.to_json
    end
  end

  def create
    journeyman = Journeyman.new(journeyman_params)

    if journeyman.save
      render json: journeyman.to_json
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
    params.require(:journeyman).permit(:name, :skill, :country, :city, :price, :journeyman_pic)
  end
end