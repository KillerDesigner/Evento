# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :presentation do
    name "MyString"
    topic "MyString"
    description "MyText"
    date "2013-12-29"
    start_time "2013-12-29 17:13:38"
    end_time "2013-12-29 17:13:38"
    fee "MyString"
  end
end
