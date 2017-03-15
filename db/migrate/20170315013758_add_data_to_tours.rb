class AddDataToTours < ActiveRecord::Migration[5.0]
  def change
    add_column :tours, :time, :string
    add_column :tours, :datepart, :string
  end
end
