class CreateAppts < ActiveRecord::Migration
  def change
    create_table :appts do |t|
      t.integer :physician_id
      t.integer :patient_id
      t.datetime :appt_date

      t.timestamps
    end
  end
end
