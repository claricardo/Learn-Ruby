class Array
	
	def sum
		0 if empty?
		reduce(0, :+)
	end

	def square
		!empty? ? self.collect {|elem| elem ** 2} : []
	end
	
	def square!
		self.map!{|elem| elem ** 2}
	end
end