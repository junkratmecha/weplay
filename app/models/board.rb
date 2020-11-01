class Board < ApplicationRecord
  belongs_to :clan
  belongs_to :user
  validates :content, presence: true, length: { maximum: 140 }
end
