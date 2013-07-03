class CreateDimIrrigations < ActiveRecord::Migration
  def change
    create_table :dim_irrigations do |t|

      t.timestamps
    end
  end
end
