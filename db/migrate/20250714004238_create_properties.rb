class CreateProperties < ActiveRecord::Migration[8.0]
  def change
    create_table :properties do |t|
      t.decimal :listing_price
      t.string :mls_number
      t.string :address
      t.integer :beds
      t.integer :baths
      t.integer :sqft
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
