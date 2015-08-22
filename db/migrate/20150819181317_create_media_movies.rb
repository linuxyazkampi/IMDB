class CreateMediaMovies < ActiveRecord::Migration
  def change
    create_table :media_movies do |t|
      t.integer :movie_id
      t.integer :media_id

      t.timestamps null: false
    end
  end
end
