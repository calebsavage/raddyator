class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.float :temp
      t.integer :sensor_id

      t.timestamps null: false
    end
  end
end
