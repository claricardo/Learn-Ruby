class Book
	def title
		@title
	end
	
	def title= a_title
		except_words = ['and', 'in', 'the', 'of', 'a', 'an']
		@title = a_title.capitalize.split(" ").
			map {|word| !except_words.include?(word) ? word.capitalize : word }.
			join(" ")
	end
end