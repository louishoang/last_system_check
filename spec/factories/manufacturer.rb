FactoryGirl.define do
  factory :manufacturer do
    sequence :name do |n|
      "manufacturer #{n}"
    end

    country "japan"
  end
end
