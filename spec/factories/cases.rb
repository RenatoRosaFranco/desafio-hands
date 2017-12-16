FactoryGirl.define do
  factory :case do
    name "CODE7EVEN"
    description "Software House and consultance"
    link "code7even.com"
    tags '#code7even #software-house #development'
    trait :associated do
      user
    end
    association :user, factory: :user, strategy: :build
  end
end
