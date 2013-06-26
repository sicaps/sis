class Sugar01Controller < ApplicationController
  def list
    @sugar01 = Sugar01.paginate(page: params[:page], :per_page => 10)
  end

  def show
    @sugar01 = Sugar01.find(params[:id])

  end
end
