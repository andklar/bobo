class CreateBeers < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :fullname
      t.string :description
      t.string :season

      t.timestamps
    end
  end
end
