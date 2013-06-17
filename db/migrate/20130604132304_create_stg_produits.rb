class CreateStgProduits < ActiveRecord::Migration
  def change
    create_table :stg_produits do |t|

      t.timestamps
    end
  end
end
