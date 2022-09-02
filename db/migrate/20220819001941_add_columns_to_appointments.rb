class AddColumnsToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :duration, :integer, null: false
    add_column :appointments, :branch, :string, null: false
    add_column :appointments, :date_for, :datetime, null: false
  end
end
