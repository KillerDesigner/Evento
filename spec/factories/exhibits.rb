# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exhibit do
    name "MyString"
    start_date "2013-12-29"
    end_date "2013-12-29"
    start_time "2013-12-29 17:13:18"
    end_time "2013-12-29 17:13:18"
    short_description "MyString"
    long_description "MyText"
  end
end
