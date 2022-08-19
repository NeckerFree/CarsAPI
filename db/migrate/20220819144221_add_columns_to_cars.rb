class AddColumnsToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :model, :string
    add_column :cars, :color, :string
    add_column :cars, :name, :string
    add_column :cars, :description, :text
    add_column :cars, :price, :float
    add_column :cars, :brand, :string
    add_column :cars, :photo, :string
  end
end
