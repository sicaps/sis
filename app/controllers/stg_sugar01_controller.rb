class StgSugar01Controller < ApplicationController
  def new
    @stg_sugar01 = StgSugar01.new()
  end

  def create
    # Instantiate a new object using form parameters
    @stg_sugar01 = StgSugar01.new(params[:stg_sugar01])
    # Save the object
    if @stg_sugar01.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'sugar01', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end
end
