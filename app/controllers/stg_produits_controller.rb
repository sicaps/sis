class StgProduitsController < ApplicationController

  def new
    @stg_produit = StgProduit.new(:product_name => 'default')
  end

  def create
    # Instantiate a new object using form parameters
    @stg_produit = StgProduit.new(params[:stg_produit])
    # Save the object
    if @stg_produit.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'dim_produits', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end

  def edit
    @stg_produit = DimProduit.find(params[:id])
  end

  def update
    # Instantiate a new object using form parameters
    @stg_produit = StgProduit.new(params[:stg_produit])
    # Save the object
    if @stg_produit.save
      # If save succeeds redirect to the list action
      redirect_to(:controller => 'dim_produits', :action => 'list')
    else
      # If save fails, redisplay the form to fix problem
      render('new')
    end
  end

end
