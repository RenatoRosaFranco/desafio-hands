FactoryGirl.define do
  factory :user do
    avatar Rack::Test::UploadedFile.new(Rails.root.join('spec', 'files', 'default-avatar.jpg'), 'image/jpeg')
    name "Renato Franco"
    email "renato_ny@live.com"
    password "123456"
    password_confirmation "123456"
    trait :admin do
      admin true
    end
  end
  factory :admin, parent:  :user do
    avatar Rack::Test::UploadedFile.new(Rails.root.join('spec', 'files', 'default-avatar.jpg'), 'image/jpeg')
    name "Jorge Silveira"
    email "jorge.silveira@hands.com.br"
    password "123456"
    password_confirmation "123456"
    admin true
  end
end
