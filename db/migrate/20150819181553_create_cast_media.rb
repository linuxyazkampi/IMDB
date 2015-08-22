class CreateCastMedia < ActiveRecord::Migration
  def change
    create_table :cast_media do |t|
      t.integer :cast_id
      t.integer :media_id

      t.timestamps null: false
    end
  end
end
