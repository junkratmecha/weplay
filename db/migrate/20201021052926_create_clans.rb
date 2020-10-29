class CreateClans < ActiveRecord::Migration[5.1]
  def change
    create_table :clans do |t|
      t.string :name, null: false, unique: true
      t.string :image
      t.string :level
      t.integer :status
      t.integer :atomosphere
      t.integer :average_age
      t.string :clan_introduction

      t.timestamps

    end
  end
end
