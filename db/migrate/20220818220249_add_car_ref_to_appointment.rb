class AddCarRefToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :car, null: false, foreign_key: true
  end
end
