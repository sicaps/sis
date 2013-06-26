class StgSugar07Controller < ApplicationController
  def new
    @stg_sugar07 = StgSugar07.new()
  end

  def create
    # Instantiate a new object using form parameters
    @stg_sugar07 = StgSugar07.new(params[:stg_sugar07])
    # Save the object
    if @stg_sugar07.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'sugar07', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end
end
