FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    sequence(:name) { |n| "bob#{n}" }
    password "12345678"
    password_confirmation "12345678"
  end
end