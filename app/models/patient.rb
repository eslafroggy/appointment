class Patient < ActiveRecord::Base
  has_many :appts
  has_many :doctors, :through => :appts
  attr_accessible :name
end
