class CreateStgProducteurs < ActiveRecord::Migration
  def change
    create_table :stg_producteurs do |t|

      t.timestamps
    end
  end
end
