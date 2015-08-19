class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :media_id
      t.integer :movie_id
      t.integer :person_id
      t.boolean :like

      t.timestamps null: false
    end
  end
end
