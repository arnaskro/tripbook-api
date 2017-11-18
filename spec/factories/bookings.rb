FactoryBot.define do
  factory :booking do
    trip nil
    user nil
    from_date "2017-11-18"
    to_date "2017-11-18"
    number_of_people 1
    status 1
  end
end
