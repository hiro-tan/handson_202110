class Armor < ApplicationRecord
  has_many :gacha_contents, as: :contentable
end
