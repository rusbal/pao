class LawyersController < ApplicationController
  def index
    @lawyers = Account.lawyers.includes(:user)
  end
end
