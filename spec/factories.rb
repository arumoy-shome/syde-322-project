FactoryGirl.define do 1
  factory :authorization do
    provider "MyString"
    uid "MyString"
  end

  factory :user do
    name "Dummy User"
    email "dummy@email.com"
  end
end
