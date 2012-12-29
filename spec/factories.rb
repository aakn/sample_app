FactoryGirl.define do
  factory :user do
    name     "Ali"
    email    "ali@ali.com"
    password "foobar"
    password_confirmation "foobar"
  end
end