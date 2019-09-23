class AddColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first, :string
    add_column :users, :second, :string
    add_column :users, :third, :string
    add_column :users, :fourth, :string
    add_column :users, :fifth, :string
  end
end
