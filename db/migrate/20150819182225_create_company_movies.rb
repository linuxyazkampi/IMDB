class CreateCompanyMovies < ActiveRecord::Migration
  def change
    create_table :company_movies do |t|
      t.integer :movie_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
