class PublicationsController < ApplicationController

  def list
    @publications = Publication.order("publications.typublication_id ASC")
  end

  def show
    namefile = Publication.find(params[:id]).fichier_file_name
    #sourcescript = '/attachments/assets/reports/' + namefile
    send_file(namefile, :type => 'application/pdf', :disposition => 'inline')
  end

  def new
    @publication = Publication.new()
  end

  def create
    # Instantiate a new object using form parameters
    @publication = Publication.create(params[:publication])
    # Save the object
    if @publication.save
      # If save succeeds redirect to the list action
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form ti fix problem
      render('new')
    end
  end

  def edit
    @publications = Publication.find(params[:id])
    #@subjects.inspect
  end

  def update
    #Find object using form parameters
    @publications = Publication.find(params[:id])

    # Update object
    if @publications.update_attributes(params[:publication])
      redirect_to(:action => 'show', :id => @publications.id )
    else
      render('edit')
    end
  end

  def delete
    @publications = Publication.find(params[:id])
  end

  def destroy
    @publications = Publication.find(params[:id])
    @publications.destroy
    redirect_to(:action => 'list')
  end


end
