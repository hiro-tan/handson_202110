class GachaContent < ApplicationRecord
  belongs_to :contentable, polymorphic: true
end
