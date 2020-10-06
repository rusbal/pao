class OpenRequestsController < ApplicationController
  def index
    @requests = Request.open
  end
end
