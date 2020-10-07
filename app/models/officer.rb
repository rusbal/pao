class Officer < ApplicationRecord
  MONDAY    = "Monday"
  TUESDAY   = "Tuesday"
  WEDNESDAY = "Wednesday"
  THURSDAY  = "Thursday"
  FRIDAY    = "Friday"
  SATURDAY  = "Saturday"
  SUNDAY    = "Sunday"

  AM = "AM"
  PM = "PM"

  belongs_to :account

  scope :assigned, -> do
    current_date = Date.current
    where(weekday: current_date.strftime("%A")).where(am_pm: current_date.strftime("%p"))
  end

  def of_the_day?
    current_date = Date.current

    weekday == current_date.strftime("%A") && \
      am_pm == current_date.strftime("%p")
  end
end
