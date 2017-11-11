FactoryBot.define do
  factory :trip do
    title "Secret Syndey"
    description "Secret places in the city"
    trip_status 1
    trio_type 1
    from_date ""
    to_date ""
    user
    number_of_people 10
  end
end
