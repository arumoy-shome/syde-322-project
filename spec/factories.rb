FactoryGirl.define do
  factory :authorization do
    provider "MyString"
    uid "MyString"
    belongs_to ""
  end

  factory :user do
    name "Dummy User"
    email "dummy@email.com"
  end
end
