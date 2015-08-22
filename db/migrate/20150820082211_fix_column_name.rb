class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :contents, :type, :kind
  end
end
