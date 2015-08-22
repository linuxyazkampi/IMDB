class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.text :bio
      t.string :photo
      t.text :detail

      t.timestamps null: false
    end
  end
end
