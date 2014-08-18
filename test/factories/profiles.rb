# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    game "MyString"
    email "MyString"
    location "MyString"
    phone "MyString"
    skills "MyText"
    user_id 1
  end
end
