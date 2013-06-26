class UpdatingApptsTable < ActiveRecord::Migration
  def change 
    rename_column :appts, :physician_id,  :doctor_id
  end
end