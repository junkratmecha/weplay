class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.bigint :user_id
      t.bigint :clan_id
      t.timestamps
    end
  end
end
