class AddProductIdToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :product_id, :integer
  end
end
