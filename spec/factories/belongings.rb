FactoryBot.define do
  factory :belonging do
    association :user
    association :clan
    admin_flg   { 1 }
  end
end
