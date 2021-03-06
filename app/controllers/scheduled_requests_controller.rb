class ScheduledRequestsController < ApplicationController
  def index
    @requests = Request.scheduled
  end 

  def destroy
    request = Request.find(params[:id])
    request.update(status: Request::STATUS_CLOSE)
    redirect_to open_requests_url, notice: "Status was closed"
  end
end
