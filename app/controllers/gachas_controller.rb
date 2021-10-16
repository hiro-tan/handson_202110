class GachasController < ApplicationController
  def index
    render json: { gachas: Gacha.all }
  end

  def show
    render json: Gacha.find(params[:id])
  end

  def draw
    render json: { message: "Implement me!" }
  end
end