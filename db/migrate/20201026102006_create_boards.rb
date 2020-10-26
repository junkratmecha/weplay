class CreateBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :boards do |t|
      t.string :content
      t.references :clan, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
