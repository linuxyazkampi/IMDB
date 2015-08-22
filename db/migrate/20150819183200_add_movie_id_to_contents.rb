class AddMovieIdToContents < ActiveRecord::Migration
  def change
    add_column :contents, :movie_id, :integer
  end
end
