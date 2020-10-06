module CloseRequestsHelper
  def attended_count(count)
    if count == 0
      "<span class='zero-count'>#{count}</span>".html_safe
    else
      "<span>#{count}</span>".html_safe
    end
  end

  def cancelled_count(count)
    if count == 0
      ""
    else
      "<span class='zero-count'>#{count}</span>".html_safe
    end
  end
end
