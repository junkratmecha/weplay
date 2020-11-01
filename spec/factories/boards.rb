FactoryBot.define do
  factory :board do
    association :user
    association :clan
    content     { "hogehoge" }
  end
end
