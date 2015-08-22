class CreateMovieWriters < ActiveRecord::Migration
  def change
    create_table :movie_writers do |t|
      t.integer :movie_id
      t.integer :cast_id
      t.timestamps null: false
    end
  end
end
