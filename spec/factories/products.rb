FactoryGirl.define do
  factory :product do
      name "A product"
      description "A simple product"
      tags '#product #simple #product'
      association :user, factory: :user, strategy: :build
  end
end
