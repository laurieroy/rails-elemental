class AddTankSizeToVehicles < ActiveRecord::Migration[6.1]
  def change
    add_column :vehicles, :tank_size, :decimal, :precision => 4, :scale => 2, :null => false
    add_column :vehicles, :make, :string
    add_column :vehicles, :model, :string
    add_column :vehicles, :year, :string, :precision => 4
    add_column :vehicles, :odometer, :integer, :precison => 6, :null => false
  end
end
