class Belonging < ApplicationRecord
  belongs_to :user
    belongs_to :clan
    validates :user_id, presence: true
    validates :clan_id, presence: true

    validates  :user_id, uniqueness: { scope: :clan_id }
    validates  :clan_id, uniqueness: { scope: :user_id }
end
