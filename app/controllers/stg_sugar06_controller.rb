class StgSugar06Controller < ApplicationController
  def new
    @stg_sugar06 = StgSugar06.new()
  end

  def create
    # Instantiate a new object using form parameters
    @stg_sugar06 = StgSugar06.new(params[:stg_sugar06])
    # Save the object
    if @stg_sugar06.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'sugar06', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end
end
