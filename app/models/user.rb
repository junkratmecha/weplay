class User < ApplicationRecord
  enum sex: { 男性: 0, 女性: 1 }
  enum age: { １０台: 0, ２０代: 1, ３０代: 2, ４０代: 3, ５０代以上: 4 }
  mount_uploader :image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
