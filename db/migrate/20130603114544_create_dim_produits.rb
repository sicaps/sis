class CreateDimProduits < ActiveRecord::Migration
  def change
    create_table :dim_produits do |t|

      t.timestamps
    end
  end
end
