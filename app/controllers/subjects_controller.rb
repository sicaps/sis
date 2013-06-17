class SubjectsController < ApplicationController

  def index

  end

  def list
   @subjects = Subject.order("subjects.position ASC")
  end

  def show
    @subjects = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => 'default')
  end

  def create
    # Instantiate a new object using form parameters
    @subjects = Subject.new(params[:subject])
    # Save the object
    if @subjects.save
      # If save succeeds redirect to the list action
      redirect_to(:action => 'list')
    else
      # If save fails, redisplay the form ti fix problem
      render('new')
    end
  end

  def edit
    @subjects = Subject.find(params[:id])
    #@subjects.inspect
  end

  def update
    #Find object using form parameters
    @subjects = Subject.find(params[:id])

    # Update object
    if @subjects.update_attributes(params[:subject])
      redirect_to(:action => 'show', :id => @subjects.id )
    else
      render('edit')
    end
  end

  def delete
    @subjects = Subject.find(params[:id])
  end

  def destroy
    @subjects = Subject.find(params[:id])
    @subjects.destroy
    redirect_to(:action => 'list')
  end

end
