class CreateBelongings < ActiveRecord::Migration[5.1]
  def change
    create_table :belongings do |t|
      t.references :clan, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :admin_flg, default: 0
    end
  end
end
