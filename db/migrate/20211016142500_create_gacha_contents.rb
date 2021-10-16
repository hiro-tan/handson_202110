class CreateGachaContents < ActiveRecord::Migration[6.1]
  def change
    create_table :gacha_contents do |t|
      t.references :contentable, polymorphic: true, null: false
      t.integer :gacha_id
      t.integer :weight

      t.timestamps
    end
  end
end
