class CreateDimProducteurs < ActiveRecord::Migration
  def change
    create_table :dim_producteurs do |t|

      t.timestamps
    end
  end
end
