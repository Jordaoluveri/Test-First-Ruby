class Timer
	attr_accessor :seconds
	
	def initialize
		@seconds = 0
	end

	def time_string
		hours = seconds/3600
		remainder = seconds%3600
		minutes = remainder/60
		seconds = remainder%60 
		sprintf('%02d:%02d:%02d', hours, minutes, seconds)
	end


end
