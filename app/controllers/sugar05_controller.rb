class Sugar05Controller < ApplicationController
  def list
    @sugar05 = Sugar05.paginate(page: params[:page], :per_page => 10)
  end

  def show
    @sugar05 = Sugar05.find(params[:id])
  end
end
