class AddPaymentToMarketPlaces < ActiveRecord::Migration[6.0]
  def change
    add_column :market_places, :payment, :string
  end
end
