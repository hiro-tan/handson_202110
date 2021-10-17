class GachaContent < ApplicationRecord
  belongs_to :contentable, polymorphic: true

  def self.lottery_contentable(contents)
    total_weights = contents.sum(&:weight)
    r = rand(total_weights)

    contents.each do |content|
      r -= content.weight

      return content.contentable if r < 0
    end

    raise "out of range. total:#{total_weights}, rand:#{r}"
  end
end
