class CreateDimYears < ActiveRecord::Migration
  def change
    create_table :dim_years do |t|

      t.timestamps
    end
  end
end
