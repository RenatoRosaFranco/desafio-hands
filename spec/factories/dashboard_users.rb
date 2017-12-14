FactoryGirl.define do
  factory :dashboard_user, class: 'Dashboard::User' do
    email "MyString"
    password "MyString"
    password_confirmation "MyString"
  end
end
