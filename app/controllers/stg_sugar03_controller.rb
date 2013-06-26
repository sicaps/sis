class StgSugar03Controller < ApplicationController
  def new
    @stg_sugar03 = StgSugar03.new()
  end

  def create
    # Instantiate a new object using form parameters
    @stg_sugar03 = StgSugar03.new(params[:stg_sugar03])
    # Save the object
    if @stg_sugar03.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'sugar03', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end
end
