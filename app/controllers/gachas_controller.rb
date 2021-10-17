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

  def draw_times
    gacha = Gacha.find(params[:id])
    resp = Array.new(10) do |_|
      gacha.lottery_contentable
    end

    render json: { results: resp }
  end
end
