class Speaker < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :affiliation, :email, :long_background, :name, :phone, :short_background, :title
  attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" },
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"
  validates :name, presence: true
  validates :phone, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_uniqueness_of :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  validates :title, presence: true
  validates :affiliation, presence: true
  validates :short_background, presence: true

  has_and_belongs_to_many :presentations, :join_table => :presentations_speakers

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

end
