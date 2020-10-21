class User < ApplicationRecord
  enum sex: { 男性: 0, 女性: 1 }
  enum age: { １０台: 0, ２０代: 1, ３０代: 2, ４０代: 3, ５０代以上: 4 }
  mount_uploader :image, ImageUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true
  before_save   :downcase_email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, {presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }}
  VALID_PASSWORD_REGEX = /\A[a-z\d]{6,128}+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  def downcase_email
    self.email = email.downcase
  end

end
