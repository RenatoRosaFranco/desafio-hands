FactoryGirl.define do
  factory :product do
      logo { Rack::Test::UploadedFile.new(Rails.root.join('spec', 'files', 'logo-default.jpg'), 'image/jpeg') }
      name "A product"
      description "A simple product"
      tags '#product #simple #product'
      association :user, factory: :user, strategy: :build
  end
end
