class StgSugar02Controller < ApplicationController
  def new
    @stg_sugar02 = StgSugar02.new()
  end

  def create
    # Instantiate a new object using form parameters
    @stg_sugar02 = StgSugar02.new(params[:stg_sugar02])
    # Save the object
    if @stg_sugar02.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'sugar02', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end
end
