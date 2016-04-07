def echo(something)
	p "#{something}"
end

def shout(something)
	p "#{something.upcase}"
end

def repeat(something, repetitions = 2)
	rp = "#{something}"
	(repetitions-1).times do
		rp += " #{something}"
	end
	rp
end

def start_of_word(string, position)
	string[0..position-1]
end

def first_word(string)
	all_words = string.split(" ")
	first_word = all_words[0]
end

def titleize(string)
	string.capitalize!
	all_words = string.split(" ").each { |word| word.capitalize! if word != "and" && word != "over" && word != "the"}.join(" ")
end
