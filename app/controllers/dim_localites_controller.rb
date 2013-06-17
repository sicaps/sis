class DimLocalitesController < ApplicationController

  def list
    @localites = DimLocalites
  end

  def show
    @localites = DimLocalite.find(params[:id])
  end

  def new
    @localites = DimLocalite.new(:name => 'default')
  end

  def create
    # Instantiate a new object using form parameters
    @localites = DimLocalite.new(params[:subject])
    # Save the object
    if @localites.save
      # If save succeeds redirect to the list action
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form ti fix problem
      render('new')
    end
  end

  def edit
    @localites = DimLocalite.find(params[:id])
    #@subjects.inspect
  end

  def update
    #Find object using form parameters
    @localites = DimLocalite.find(params[:id])

    # Update object
    if @localites.update_attributes(params[:subject])
      redirect_to(:action => 'show', :id => @localites.id )
    else
      render('edit')
    end
  end

  def delete
    @localites = DimLocalite.find(params[:id])
  end

  def destroy
    @localites = DimLocalite.find(params[:id])
    @localites.destroy
    redirect_to(:action => 'list')
  end


end
