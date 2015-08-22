class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :detail
      t.timestamps null: false
    end
  end
end
