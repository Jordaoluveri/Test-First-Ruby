class Friend
	
	def initialize
		@greeting = greeting
	end

	def greeting(name = "")
		name = ", #{name}" if name != ""
		greeting = "Hello#{name}!"
	end

end