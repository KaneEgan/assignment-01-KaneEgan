class CreateOffices < ActiveRecord::Migration[7.0]
  def change
    create_table :offices do |t|
      t.string :building_name
      t.integer :room_number

      t.timestamps
    end
  end
end
