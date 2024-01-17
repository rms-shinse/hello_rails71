class CreateEnqueteDeliveryDetails < ActiveRecord::Migration[7.1]
  def change
    create_table :enquete_delivery_details do |t|
      t.integer :enquete_delivery_id
      t.integer :enquete_edition_id

      t.timestamps
    end

    add_index :enquete_delivery_details, %i[enquete_delivery_id enquete_edition_id], unique: true
  end
end
