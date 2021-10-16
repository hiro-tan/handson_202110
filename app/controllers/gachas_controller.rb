class GachasController < ApplicationController
  def index
    render json: { gachas: Gacha.all }
  end

  def show
    render json: Gacha.find(params[:id])
  end

  def draw
    gacha = Gacha.find(params[:id])

    render json: gacha.lottery_contentable
  end
end
