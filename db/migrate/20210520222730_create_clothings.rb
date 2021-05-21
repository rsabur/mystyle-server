class CreateClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :clothings do |t|
      t.text :name
      t.text :image
      t.text :size
      t.text :category
      t.text :gender

      t.timestamps
    end
  end
end
