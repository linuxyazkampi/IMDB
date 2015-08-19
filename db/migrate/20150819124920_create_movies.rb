class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :keywords
      t.text :storyline
      t.text :techspecs
      t.text :detail

      t.timestamps null: false
    end
  end
end
