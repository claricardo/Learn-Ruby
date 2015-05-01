class Friend
	def greeting(name = nil)
		"Hello" + (name == nil ? "" : ", " + name) + "!"
	end
end