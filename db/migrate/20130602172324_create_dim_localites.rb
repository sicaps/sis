class CreateDimLocalites < ActiveRecord::Migration
  def change
    create_table :dim_localites do |t|
      t.integer 'loc_sk'
      t.string 'loc_zone'
      t.string 'loc_district'
      t.string 'loc_region'
      t.string 'loc_dept'
      t.string 'loc_ville'
      t.date 'effective_date'
      t.date 'expiry_date'
      t.timestamps
    end
  end
end
