class Dictionary
	def initialize
		@entries = Hash.new
		@entries.default = {}
	end

	def entries
		@entries
	end

	def add entry
		@entries.merge!(entry) if entry.is_a?(Hash)
		@entries.merge!(entry => nil) if entry.is_a?(String)
	end
	
	def keywords
		@entries.keys.sort
	end
	
	def include? word
		@entries.key?(word)
	end
	
	def find word
		if @entries.empty? 
			return {}
		else
			return @entries.select {|key, value| key.match(word)}
		end
	end	
	
	def printable
		str = ""
		@entries.sort.each {|key, value| str += "[#{key}] \"#{value}\"\n"}
		return str.chop
	end
end