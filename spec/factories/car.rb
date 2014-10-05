FactoryGirl.define do
  factory :car do
    color "black"
    year "1999"
    mileage "170000"

    association :manufacturer
  end
end

