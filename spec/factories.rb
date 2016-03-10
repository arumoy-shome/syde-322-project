FactoryGirl.define do
  factory :event do
    start_at "2016-03-11 00:05:05"
    end_at "2016-03-11 00:05:05"
    location "MyString"
    user_id 1
    tutor_id 1
  end
  factory :authorization do
    provider "MyString"
    uid "MyString"
  end

  factory :user do
    name "Dummy User"
    email "dummy@email.com"
  end
end
