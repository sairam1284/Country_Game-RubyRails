class DropCountries < ActiveRecord::Migration[5.0]
  def change
    drop_table :countries
    drop_table :continents
  end
end
