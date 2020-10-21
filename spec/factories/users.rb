FactoryBot.define do
  factory :user do
    email                 { "test@test.mail" }
    password              { "foobar" }
    password_confirmation { "foobar" }
    name                  { "testuser" }
  end
end
