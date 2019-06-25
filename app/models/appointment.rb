class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor

  def format_date
    string = self.appointment_datetime.to_formatted_s(:long_ordinal).insert(-6, "at ").gsub("th", "")
  end

end
