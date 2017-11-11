FactoryBot.define do
  factory :local do
    user_id 1
    available false
    available_from "2017-11-05"
    available_to "2017-11-05"
    description "MyString"
    quote "MyString"
  end

  factory :local_full, class: Local do
    user
    available true
    available_from "2017-11-05"
    available_to "2017-12-05"
    description "Something about me"
    quote "I know some places"
    country
    city
  end
end
