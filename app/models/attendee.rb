class Attendee < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :company, :email, :name, :phone, :state, :zip

  has_many :exhibits
  has_many :presentations

  validates :address1, presence: true
  validates :city, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_uniqueness_of :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  validates :name, presence: true
  validates :phone, presence: true
  validates :state, presence: true
  validates :zip, presence: true

  has_and_belongs_to_many :exhibits, :join_table => :exhibits_attendees
  has_and_belongs_to_many :presentations, :join_table => :presentations_attendees

end
