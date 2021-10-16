class Gacha < ApplicationRecord
  has_many :gacha_contents

  def lottery_contentable
    contents = self.gacha_contents
    total_weights = contents.sum(:weight)
    r = rand(total_weights)

    contents.each do |content|
      r -= content.weight

      return content.contentable if r < 0
    end

    raise "out of range. total:#{total_weights}, rand:#{r}"
  end
end
