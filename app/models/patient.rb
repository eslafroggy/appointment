class Patient < ActiveRecord::Base
  has_many :appts
  has_many :doctors, :through => :appointments
  attr_accessible :name
end
