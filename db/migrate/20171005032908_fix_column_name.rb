class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :owners, :users_id, :user_id
  end
end
