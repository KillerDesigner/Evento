class Exhibit < ActiveRecord::Base
  attr_accessible :end_date, :end_time, :long_description, :name, :short_description, :start_date, :start_time

  has_many :presentations
  has_many :sponsors
  has_many :attendees
  has_many :speakers

end
