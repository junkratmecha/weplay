class Belonging < ApplicationRecord
  belongs_to :user
  belongs_to :clan
  validates :user_id, presence: true
  validates :clan_id, presence: true
  validates  :user_id, uniqueness: { scope: :clan_id }
  validates  :clan_id, uniqueness: { scope: :user_id }
  validate :bel_user_clan_limit
  validate :bel_clan_member_limit


  def bel_user_clan_limit
    if user.clans.count > 3
     errors.add(:request, "クラン所属は三つまでです。")
    end
  end

  def bel_clan_member_limit
    if clan.users.count > 20
     errors.add(:request, "クランは定員(20名)です。")
    end
  end
end
