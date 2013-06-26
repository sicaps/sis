class DimProduitsController < ApplicationController

  def index
    #@dim_produits = DimProduit.paginate(:page => params[:page], :per_page => 10)
    # on indique la page sur laquelle l'utilisateur se trouve
  end

  def list
    @dim_produits = DimProduit.where(:expiry_date => '9999-12-31').order('product_code ASC').paginate(page: params[:page], :per_page => 15)
    #@dim_produits = DimProduit
  end

  def show
    @dim_produit = DimProduit.find(params[:id])
    #@stg_producteurs.inspect
  end

  def new
    #@dim_produit = DimProduit.new(:product_name => 'default')
  end

  def create
    # Instantiate a new object using form parameters
    #@dim_produit = DimProduit.new(params[:dim_produit])
    # Save the object
    #if @dim_produit.save
    #  # If save succeeds redirect to the list action
    #  redirect_to(:action => 'list')
    #else
    #  # If save fails, redisplay the form ti fix problem
    #  render('new')
    #end
  end

  def edit
    #@dim_produit = DimProduit.find(params[:id])
    #@subjects.inspect
  end

  def update
    #Find object using form parameters
    #@dim_produit = DimProduit.find(params[:id])

    # Update object
    #if @dim_produit.update_attributes(params[:dim_produit])
    #  redirect_to(:action => 'show', :id => @dim_produit.id )
    #else
    #  render('edit')
    #end
  end

  def delete
    #@stg_producteurs = StgProducteur.find(params[:id])
  end

  def destroy
    #@stg_producteurs = StgProducteur.find(params[:id])
    #@stg_producteurs.destroy
    #redirect_to(:action => 'list')
  end
end
