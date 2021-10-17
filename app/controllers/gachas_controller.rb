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
    times = 10

    contents = Gacha.find(params[:id]).gacha_contents
    contents_more_than_epic = contents.filter { |c| c.contentable.rarity > 0 }
    resp = Array.new(times) do |i|
      GachaContent.lottery_contentable(i + 1 == times ? contents_more_than_epic : contents)
    end

    render json: { results: resp }
  end
end
