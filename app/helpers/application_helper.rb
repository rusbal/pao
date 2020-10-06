module ApplicationHelper

  def notice(key)
    return "success" if key == "notice"
    return "danger"  if key == "alert"

    ""
  end

  def current_role
    return "" if current_user.nil?

    "(#{current_user.account.role.capitalize})"
  end

end
