class StaticController < ApplicationController
	def index
		@setpoint = Config.find_by(:key => "setpoint");
	end
end
