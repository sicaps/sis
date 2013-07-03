class CreateDimTransactions < ActiveRecord::Migration
  def change
    create_table :dim_transactions do |t|

      t.timestamps
    end
  end
end
