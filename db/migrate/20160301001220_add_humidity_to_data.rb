class AddHumidityToData < ActiveRecord::Migration
  def change
    add_column :data, :humidity, :float
  end
end
