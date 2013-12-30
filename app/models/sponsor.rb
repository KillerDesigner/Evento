class Sponsor < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :amount, :company, :email, :level, :name, :phone

  has_and_belongs_to_many :exhibits, :join_table => :exhibits_sponsors
  has_and_belongs_to_many :presentations, :join_table => :presentations_sponsors

end
