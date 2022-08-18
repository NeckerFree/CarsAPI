class AddSellerRefToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments, :seller, null: false, foreign_key: true
  end
end
