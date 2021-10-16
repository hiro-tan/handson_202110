class CreateGachas < ActiveRecord::Migration[6.1]
  def change
    create_table :gachas do |t|
      t.integer :gacha_content_group_id
      t.string :name

      t.timestamps
    end
  end
end
