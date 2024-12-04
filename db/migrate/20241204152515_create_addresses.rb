class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.references :client, null: false, foreign_key: true
      t.string :street
      t.string :ext_number
      t.string :int_number
      t.string :municipality
      t.string :city
      t.string :postal_code
      t.string :address_type
      t.boolean :status

      t.timestamps
    end
  end
end
