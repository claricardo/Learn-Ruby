class Temperature
	def initialize options
		@unit = options.keys[0]
		@temp = options[options.keys[0]]
	end
	
	# def Temperature.from_fahrenheit temp
	def self.from_fahrenheit temp
		Temperature.new(:f => temp)
	end
	
	#def Temperature.from_celsius temp
	def self.from_celsius temp
		Temperature.new(:c => temp)
	end
		
	def self.ftoc f_temp
		return (f_temp - 32) * 5.0 / 9.0
	end
	
	def self.ctof c_temp
		return c_temp * 9.0 / 5.0 + 32
	end
		
	def in_fahrenheit
		return @unit == :f ? @temp : Temperature.ctof(@temp)
	end
	
	def in_celsius
		return @unit == :c ? @temp : Temperature.ftoc(@temp)
	end
end

class Celsius < Temperature
	def initialize temp
		super(:c => temp)
	end
end

class Fahrenheit < Temperature
	def initialize temp
		super(:f => temp)
	end
end

