class User < ApplicationRecord
  include Clearance::User

  def signed_in?
    return false if signed_in_at.nil?
    return true  if signed_out_at.nil?

    signed_in_at > signed_out_at
  end
end
