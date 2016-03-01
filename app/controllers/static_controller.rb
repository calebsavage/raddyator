class StaticController < ApplicationController
	def index

		@path = Config.find_by(:key => "path").value
		@setpoint = Integer(Config.find_by(:key => "setpoint").value)
		@range = Integer(Config.find_by(:key =>"range").value)
		@current_inside = Datum.last

		@diff = (@setpoint - Integer(@current_inside.temp))

		if @diff > @range
			@heating = true
			#turn on heater
		else
			@heating = false
		end

	end
end
