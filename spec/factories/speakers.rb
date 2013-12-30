# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :speaker do
    name "MyString"
    title "MyString"
    email "MyString"
    affiliation "MyString"
    phone "MyString"
    short_background "MyString"
    long_background "MyText"
  end
end
