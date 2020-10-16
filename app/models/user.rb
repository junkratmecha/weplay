class User < ApplicationRecord
  enum sex: { 男性: 0, 女性: 1}
  mount_uploader :image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
