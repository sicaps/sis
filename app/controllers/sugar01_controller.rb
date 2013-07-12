class Sugar01Controller < ApplicationController
  def list
    @sugar01 = Sugar01.paginate(page: params[:page], :per_page => 10)
  end

  def show
    #@sugar01 = Sugar01.find(params[:id])
    #grid = PivotTable
    @chart = LazyHighCharts::HighChart.new do |f|
    f.title({ :text => 'Graphic demo: Production de la Canne '})
    f.options[:xAxis][:categories] = ['2007', '2008', '2009', '2010', '2011']
    #f.labels(:items =>[:html=>"Total fruit consumption", :style=>{:left=>"40px", :top=>"8px", :color=>"black"} ])
    f.series(:type => 'column',:name => 'Ferke I',:data=> [3, 2, 1, 3, 4])
    f.series(:type => 'column',:name=> 'Ferke II',:data=> [2, 3, 5, 7, 6])
    f.series(:type => 'column', :name=> 'Borotou',:data=> [4, 3, 3, 9, 1])
    f.series(:type =>'column', :name=> 'Zuenoula',:data=> [4, 3, 3, 9, 0])
    #f.series(:type => 'spline',:name=> 'Average', :data=> [3, 2.67, 3, 6.33, 3.33])
    #f.series(:type=> 'pie',:name=> 'Total consumption',
    #    :data=> [
    #    {:name=> 'Jane', :y=> 13, :color=> 'red'},
    #    {:name=> 'John', :y=> 23,:color=> 'green'},
    #    {:name=> 'Joe', :y=> 19,:color=> 'blue'}
    #],
    #    :center=> [100, 80], :size=> 100, :showInLegend=> false)

    @grid = PivotTable::Grid.new do |g|
    g.source_data = Sugar01
    g.column_name = :product_name
    g.row_name = :year4
      #g.   = :volume_kg
    end

  end

end end
