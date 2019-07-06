class Appointment < ApplicationRecord
	belongs_to :patient
	belongs_to :doctor

	def human_time
	end
end
