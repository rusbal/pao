class CloseRequestsController < ApplicationController
  def index
    @requests = Request.close
  end
end
