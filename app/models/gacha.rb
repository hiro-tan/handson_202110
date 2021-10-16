class Gacha < ApplicationRecord
  has_many :gacha_contents

  def lottery_contentable
    return "Implement me!"
  end
end
