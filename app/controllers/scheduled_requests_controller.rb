class ScheduledRequestsController < ApplicationController
  def index
    @requests = Request.scheduled
  end 
end
