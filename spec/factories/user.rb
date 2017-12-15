FactoryGirl.define do
  factory :user do
    name "Renato Franco"
    email "renato_ny@live.com"
    password "123456"
    password_confirmation "123456"
  end
  factory :admin, parent:  :user do
    name "Jorge Silveira"
    email "jorge.silveira@hands.com.br"
    password "123456"
    password_confirmation "123456"
    admin true
  end
end
