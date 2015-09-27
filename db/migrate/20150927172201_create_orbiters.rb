class CreateOrbiters < ActiveRecord::Migration
  def change
    create_table :orbiters do |t|
      t.string :name
      t.float :orbit_distance
      t.float :orbit_speed
      t.float :diameter
      t.float :mass

      t.timestamps null: false
    end
  end
end
