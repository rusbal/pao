class MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
  end

  def new
    @request = Request.find(params[:request_id])
    @meeting = Meeting.new
  end

  def create
    request = Request.find(params[:request_id])
    account = current_user.account
    meeting = request.meetings.new(
      scheduled_at: request_params[:scheduled_at],
      account: account
    )

    if meeting.save!
      redirect_to scheduled_requests_url, notice: "Meeting was created"
    else
      redirect_to new, error: "Please check your entries"
    end
  end

  private

  def request_params
    params.require(:meeting).permit(:scheduled_at)
  end
end
