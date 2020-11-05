FactoryBot.define do
  factory :request do
    association :user
    association :clan
  end
end