class CreateCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :countries do |t|
      t.string :country, null: false
      t.integer :continent_id
      t.timestamps
    end
  end
end
