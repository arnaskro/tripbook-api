FactoryBot.define do
  factory :review_trip, class: Review do
    user
    text "It was amazing"
    stars 3
  end
  
  factory :review_local, class: Review do
    user
    text "great communication"
    stars 5
  end
end
