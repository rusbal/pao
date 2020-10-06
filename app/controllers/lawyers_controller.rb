class LawyersController < ApplicationController
  def index
    @lawyers = Account.lawyers.includes(:user)
  end

  def show
    @lawyer = Account.find(params[:id])
  end
end
