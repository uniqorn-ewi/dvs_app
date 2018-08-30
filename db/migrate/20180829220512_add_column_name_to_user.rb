class AddColumnNameToUser < ActiveRecord::Migration[5.1]
  def up
    add_column :users, :name, :string, null: false, default: ""
    add_index :users, :name, unique: true
  end

  def down
    remove_columns :users, :name
  end
end
