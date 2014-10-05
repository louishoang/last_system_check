class AddIndicesToCar < ActiveRecord::Migration
  def change
    add_index :cars, [:color, :year, :mileage, :manufacturer_id], unique: true
  end
end
