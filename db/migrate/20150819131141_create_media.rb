class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.string :description
      t.string :file_one
      t.string :file_two
      t.string :url_one
      t.string :url_two
      t.text :video
      t.string :type

      t.timestamps null: false
    end
  end
end
