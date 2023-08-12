module ApplicationHelper
  def message_type(key)
    case key
    when "alert"
      "danger"
    when "notice"
      "success"
    when "error"
      "danger"
    end
  end
end
