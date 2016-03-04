class StaticController < ApplicationController
	def index

		@path = Config.find_by(:key => "path").value
		@setpoint = Integer(Config.find_by(:key => "setpoint").value)
		@range = Integer(Config.find_by(:key =>"range").value)
		@current_inside = Datum.last

		@units = Config.find_by(:key => "units").value


		@diff = (@setpoint - Integer(@current_inside.temp))

		@chart_data = Datum.limit(40).order(created_at: :desc)
		#Datum.where("created_at >= ?", Time.zone.now.beginning_of_day)

		if @diff > @range
			@heating = true
			#turn on heater
		else
			@heating = false
		end

	end
end
