class Doctor < ActiveRecord::Base
  has_many :appts
  has_many :patients, :through => :appts
  attr_accessible :name
end
