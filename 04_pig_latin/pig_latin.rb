def translate phrase
	words = phrase.split(' ')
	words.map! do |word| 
		# detect if a word begins with 'qu' (preceded or not by consonants),
		# or with only consonants but not including punctuation marks
		part = word.partition(/^([^aeiou]?qu|[^aeiou,;.:]+)/i)
		
		# detect presence of caps
		caps = part[1].match(/^[A-Z]/) != nil	
		
		# set the remaining content
		word = (part[1] == "" ? part[0] : part[2])
		
		# extract punctuation marks located at the end of the word
		punct = word.partition(/(\W+)$/) 
		
		# build the translated word: remaining word + beginning part + ["ay"] + punctuation marks
		word = (punct[1] == "" ? word : punct[0]) + part[1].downcase +
			   (punct[0] == "" && punct[1] != "" ? "" : "ay") + punct[1]
		caps ? word.capitalize : word
	end
	return words.join(' ')
end
