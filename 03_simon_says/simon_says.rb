def echo phrase
	return phrase
end

def shout phrase
	return phrase.upcase
end

def repeat phrase, n = 2
	result = ""
	n.times {|i| result += phrase + (i < n-1 ? ' ' : '')}
	return result
end

def start_of_word word, n_letters
	return word.slice(0,n_letters)
end

def first_word phrase
	return phrase.split(' ')[0]
end

$little_words = ['the', 'and', 'or', 'in', 'from', 'of', 'over', 'under', 'at', 'on']

def titleize phrase
	
	words = phrase.split(' ')
	words.each {|word| word.capitalize! if !$little_words.include?(word) or 
											words.index(word) == 0 }
	return words.join(' ')
end
