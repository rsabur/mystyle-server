class CreateOutfitClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :outfit_clothings do |t|
      t.integer :outfit_id
      t.integer :clothing_id

      t.timestamps
    end
  end
end
