class Sugar06Controller < ApplicationController
  def list
    @sugar06 = Sugar06.paginate(page: params[:page], :per_page => 10)
  end

  def show
    @sugar06 = Sugar06.find(params[:id])
  end
end
