require 'csv'

Gacha.delete_all
CSV.foreach('db/seeds/gachas.csv', headers: true) do |row|
  Gacha.create(
    id: row['id'],
    name: row['name']
  )
end

Weapon.delete_all
CSV.foreach('db/seeds/weapons.csv', headers: true) do |row|
  Weapon.create(
    id: row['id'],
    name: row['name'],
    rarity: row['rarity']
  )
end

Armor.delete_all
CSV.foreach('db/seeds/armors.csv', headers: true) do |row|
  Armor.create(
    id: row['id'],
    name: row['name'],
    rarity: row['rarity']
  )
end

GachaContent.delete_all
CSV.foreach('db/seeds/gacha_contents.csv', headers: true) do |row|
  GachaContent.create(
    id: row['id'],
    contentable_type: row['contentable_type'],
    contentable_id: row['contentable_id'],
    gacha_id: row['gacha_id'],
    weight: row['weight']
  )
end
