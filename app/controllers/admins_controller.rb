class AdminsController < ApplicationController
  def index
    # @admins = Account.where(role: "admin").includes(:user)
    # @admins = Account.where(role: Account::ADMIN).includes(:user)
    @admins = Account.admins.includes(:user)
  end
end
