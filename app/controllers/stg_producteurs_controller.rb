class StgProducteursController < ApplicationController

  def new
    @stg_producteurs = StgProducteur.new(:prod_name => 'default')
  end

  def create
    # Instantiate a new object using form parameters
    @stg_producteur = StgProducteur.new(params[:stg_producteur])
    # Save the object
    if @stg_producteur.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'dim_producteurs', :action => 'list')
    else
      # If save fails, redisplay the form ti fix problem
      render('new')
    end
  end

  def edit
    @stg_producteur = DimProducteur.find(params[:id])
  end

  def update
    # Instantiate a new object using form parameters
    @stg_producteur = StgProducteur.new(params[:stg_producteur])
    # Save the object
    if @stg_producteur.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'dim_producteurs', :action => 'list')
    else
      # If save fails, redisplay the form ti fix problem
      render('new')
    end
  end

end
