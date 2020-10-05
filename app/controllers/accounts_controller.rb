class AccountsController < ApplicationController
  def index
    @accounts = Account.includes(:user)
  end
end
