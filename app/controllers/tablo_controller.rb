class TabloController < ApplicationController

  grid = PivotTable::Grid.new do |g|
    g.source_data   = Sugar01
    g.column_name  = :product_name
    g.row_name     = :year4
    #g.   = :volume_kg
  end



end
