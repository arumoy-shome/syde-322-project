FactoryGirl.define do
  factory :user do
    name "Dummy User"
    email "dummy@email.com"
    password_digest "secret00"
  end
end
