class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :time
      t.string :category
      t.string :category
      t.string :patient_id
      t.string :doctor_id
    end
  end
end
