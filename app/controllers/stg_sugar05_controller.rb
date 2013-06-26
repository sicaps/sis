class StgSugar05Controller < ApplicationController
  def new
    @stg_sugar05 = StgSugar05.new()
  end

  def create
    # Instantiate a new object using form parameters
    @stg_sugar05 = StgSugar05.new(params[:stg_sugar05])
    # Save the object
    if @stg_sugar05.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'sugar05', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end
end
