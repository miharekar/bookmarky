# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :bookmark do
    url "MyString"
    short_url "MyString"
    site nil
  end
end
