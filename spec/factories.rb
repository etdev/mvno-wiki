FactoryGirl.define do
  factory :phone do
    sequence(:name) { |n| "testPhoneName#{n}" }
  end

  factory :mvno do
    sequence(:name) { |n| "testMvnoName#{n}" }
    sequence(:home_page) { |n| "http://testMvnoHomePage#{n}.com" }
  end

  factory :plan do
    sequence(:name) { |n| "testPlanName#{n}" }
    monthly_cost 1990
    data_size 5
  end
end
