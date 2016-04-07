class Book
	attr_accessor :title

	def title=(title)
		not_capitalizable = %w[the a an and in of]
		if title.split(" ").length > 1
			cap = title.split(" ")
			cap[0].capitalize!
			new_title = ""
			cap.each do |t|
				if not_capitalizable.include?(t)
					new_title += t + " " 
				else
					new_title += t.capitalize + " "
				end 
			end
			@title = new_title[0..-2]
		else
			@title = title.capitalize
		end
	end
end