class CreateModels < ActiveRecord::Migration[6.1]
  def change
    create_table :models do |t|
      t.text :color
      t.text :image

      t.timestamps
    end
  end
end
