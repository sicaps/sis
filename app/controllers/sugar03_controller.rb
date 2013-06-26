class Sugar03Controller < ApplicationController
  def list
    @sugar03 = Sugar03.paginate(page: params[:page], :per_page => 10)
  end

  def show
    @sugar03 = Sugar03.find(params[:id])
  end
end
