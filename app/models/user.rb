class User < ApplicationRecord
  enum sex: { 男性: 0, 女性: 1}
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
