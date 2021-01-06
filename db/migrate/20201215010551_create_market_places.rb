class CreateMarketPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :market_places do |t|
      t.string :business_name
      t.string :address
      t.string :district
      t.integer :postcode
      t.text :business_line
      t.string :pickup_type
      t.time :open_hour
      t.time :close_hour
      t.string :service_days

      t.timestamps
    end
  end
end
