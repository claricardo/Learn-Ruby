class XmlDocument
	
	def initialize indent = false
		@indent = indent
		@end_char = @indent ? "\n" : ""
	end
	
	def hello tag = nil
		return "<hello>" + @end_char + yield + "</hello>" + @end_char if block_given?
		return "<hello #{tag.keys[0]}='#{tag[tag.keys[0]]}'/>" if !tag.nil?
		"<hello/>"
	end
	
	def send tag_name
		"<#{tag_name}/>"
	end
	
	def goodbye
		tab = @indent ? 2 : 0
		return " "*tab + "<goodbye>" + @end_char + yield + " "* tab + "</goodbye>" + @end_char if block_given?
		"<goodbye/>"
	end
	
	def come_back
		tab = @indent ? 4 : 0
		" "*tab + "<come_back>" + @end_char + yield + " "*tab + "</come_back>" + @end_char
	end
	
	def ok_fine tag
		tab = @indent ? 6 : 0
		" "*tab + "<ok_fine #{tag.keys[0]}='#{tag[tag.keys[0]]}'/>" + @end_char if !tag.nil?
	end
	
end