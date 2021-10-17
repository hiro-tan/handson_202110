class AddColumnToWeapon < ActiveRecord::Migration[6.1]
  def change
    add_column :weapons, :rarity, :integer
  end
end
