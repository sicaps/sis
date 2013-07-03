class CreateDimCountries < ActiveRecord::Migration
  def change
    create_table :dim_countries do |t|

      t.timestamps
    end
  end
end
