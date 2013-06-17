class CreateTypublications < ActiveRecord::Migration
  def change
    create_table :typublications do |t|
      t.string "name"
      t.timestamps
    end
  end
end
