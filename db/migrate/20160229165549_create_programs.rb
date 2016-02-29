class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :day
      t.string :am_on
      t.string :am_off
      t.string :pm_on
      t.string :pm_off

      t.timestamps null: false
    end
  end
end
