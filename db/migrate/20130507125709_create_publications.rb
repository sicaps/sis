class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.integer "typublication_id"
      t.string "numpublication"
      t.string "titrepublication"
      t.text "description"
      t.timestamps
    end
    add_index("publications","titrepublication")
  end
end
