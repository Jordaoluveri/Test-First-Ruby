def translate(pigs)
	pigs = pigs.split(" ")
	final_words = ""
	pigs.each do |pig|
		cap = false
		cap = true if pig[0].upcase == pig[0]
		pig.downcase!
		vowels = %w[a e i o u]
		if vowels.include? pig[0]
			final_words += pig + "ay "
		else
			consonants_separator = pig.split(/([aeiou].*)/)
			if consonants_separator[0][-1] == "q" && consonants_separator[1][0] == "u"
				consonants_separator[0] += "u"
				consonants_separator[1][0] = ""
				final_words += consonants_separator[1] + consonants_separator[0] + "ay "
			else
				final_words += consonants_separator[1] + consonants_separator[0] + "ay "
			end
		end
		word = final_words.split(" ")[-1].capitalize! if cap == true
		if word
			length = final_words.split(" ")[-1].length
			final_words = final_words[0..-length-2]
			final_words += word + " "
		end
	end
	final_words[0..-2]
end