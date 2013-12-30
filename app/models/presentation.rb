class Presentation < ActiveRecord::Base
  attr_accessible :date, :description, :end_time, :fee, :name, :start_time, :topic

  validates :date, presence: true
  validates :description, presence: true
  validates :fee, presence: true
  validates :name, presence: true
  validates :time, presence: true
  validates :topic, presence: true

  has_and_belongs_to_many :exhibits, :join_table => :exhibits_presentations
  has_and_belongs_to_many :speakers, :join_table => :presentations_speakers
  has_and_belongs_to_many :sponsors, :join_table => :presentations_sponsors

end
