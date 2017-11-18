FactoryBot.define do
  factory :local do
    user_id 1
    available false
    description "MyString"
    quote "MyString"
  end

  factory :local_full, class: Local do
    user
    available true
    description "Something about me"
    quote "I know some places"
    city
  end
end
