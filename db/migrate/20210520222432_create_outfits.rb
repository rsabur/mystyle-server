class CreateOutfits < ActiveRecord::Migration[6.1]
  def change
    create_table :outfits do |t|
      t.integer :user_id
      t.text :name

      t.timestamps
    end
  end
end
