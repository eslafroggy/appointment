class Appt < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor
  attr_accessible :appt_date, :patient_id, :doctor_id
  # validates_datetime :appt_date, on: :create, on_or_after: :today
end
