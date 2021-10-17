class AddColumnToArmor < ActiveRecord::Migration[6.1]
  def change
    add_column :armors, :rarity, :integer
  end
end
