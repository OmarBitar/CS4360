module ApplicationHelper
  def datetime(date, time)
    date + time.seconds_since_midnight.seconds
  end
end
