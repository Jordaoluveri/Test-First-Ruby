def reverser
	reversed = ""
	yield.split(" ").each do |word|
		reversed += word.reverse + " "	
	end
	reversed[0..-2]
end

def adder(to_add = 1)
	yield + to_add
end

def repeater(to_repeat = 1)
	to_repeat.times { yield }
end