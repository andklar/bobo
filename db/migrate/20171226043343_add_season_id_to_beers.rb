class AddSeasonIdToBeers < ActiveRecord::Migration[5.0]
  def change
    add_column :beers, :season_id, :integer
  end
end
