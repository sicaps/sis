class Sugar02Controller < ApplicationController
  def list
    @sugar02 = Sugar02.paginate(page: params[:page], :per_page => 10)
  end
end
