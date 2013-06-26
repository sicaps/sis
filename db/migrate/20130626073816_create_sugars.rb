class CreateSugars < ActiveRecord::Migration
  def change
    create_table :sugars do |t|

      t.timestamps
    end
  end
end
