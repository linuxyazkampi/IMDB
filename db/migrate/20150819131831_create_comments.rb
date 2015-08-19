class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :movie_id
      t.text :content
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
