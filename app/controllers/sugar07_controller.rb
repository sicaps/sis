class Sugar07Controller < ApplicationController
  def list
    @sugar07 = Sugar07.paginate(page: params[:page], :per_page => 10)
  end

  def show
    @sugar07 = Sugar07.find(params[:id])
  end
end
