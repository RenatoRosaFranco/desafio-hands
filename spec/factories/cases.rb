FactoryGirl.define do
  factory :case do
    logo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'files', 'logo-default.jpg'), 'image/jpeg') }
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
