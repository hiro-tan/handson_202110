class CreateGachas < ActiveRecord::Migration[6.1]
  def change
    create_table :gachas do |t|
      t.string :name

      t.timestamps
    end
  end
end
