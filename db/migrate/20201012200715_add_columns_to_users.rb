class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string, null: false, default: ""
    add_column :users, :psid, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
    add_column :users, :sex, :integer
    add_column :users, :self_introduction, :string, limit: 400
  end
end