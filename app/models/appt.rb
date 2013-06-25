class Appt < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  attr_accessible :appt_date, :patient_id, :physician_id
end
