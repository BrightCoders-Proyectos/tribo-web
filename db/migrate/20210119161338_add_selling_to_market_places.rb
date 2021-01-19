class AddSellingToMarketPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :market_places, :selling, :string
  end
end
