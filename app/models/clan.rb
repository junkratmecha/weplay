class Clan < ApplicationRecord
  enum status: { メンバー募集中: 0, 非募集: 1, 活動休止中: 2 }
  enum atomosphere: { エンジョイ: 0, エンジョイandガチ: 1, ガチ: 2 }
  enum average_age: { １０代: 0, ２０代: 1, ３０代: 2, ４０代: 3, ５０代以上: 4 }
  mount_uploader :image, ImageUploader
  has_many :belongings, dependent: :destroy
  has_many :requests, dependent: :destroy
  has_many :users, through: :belongings
  has_many :boards
  # ユーザがコミュニティに所属していればtrueを返す
  def user_belonging?(user)
    users.include?(user)
  end
end
