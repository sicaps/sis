class SugarController < ApplicationController
  def list
    @sugar = Sugar.paginate(page: params[:page], :per_page => 20)
  end

  def show
    @sugar = Sugar.find(params[:id])
  end

end
