class CreateMotorcycles < ActiveRecord::Migration[7.2]
  def change
    create_table :motorcycles do |t|
      t.string :name
      t.string :plate_number
      t.string :vin
      t.text :service_history
      t.integer :mileage
      t.string :status
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
