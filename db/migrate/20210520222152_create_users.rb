class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.integer :age
      t.text :gender
      t.text :password
      t.integer :model_id

      t.timestamps
    end
  end
end
