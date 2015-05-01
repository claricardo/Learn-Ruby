class RPNCalculator
	
	def initialize
		@stack = Array.new
		@value = 0
	end
	
	def value
		@value
	end
	
	def push value
		@stack.push(value)
	end
	
	def plus
		raise "calculator is empty" if @stack.empty?
		@value = @stack.pop + @stack.pop
		@stack.push(@value)
	end
	
	def minus
		raise "calculator is empty" if @stack.empty?
		@value = -@stack.pop + @stack.pop
		@stack.push(@value)
	end
	
	def times
		raise "calculator is empty" if @stack.empty?
		@value = @stack.pop * @stack.pop
		@stack.push(@value)
	end
	
	def divide
		raise "calculator is empty" if @stack.empty?
		divisor = @stack.pop.to_f
		@value = @stack.pop / divisor
		@stack.push(@value)
	end
	
	def tokens tokens_str
		tokens_array = tokens_str.split(' ')
		tokens_array.map {|elem| elem =~ /\d+/ ? elem.to_i : elem.to_sym }
	end
	
	def evaluate tokens_str
		elems_array = tokens(tokens_str)
		elems_array.each do |elem|
			case elem
				when :+
					plus
				when :-
					minus
				when :*
					times
				when :/
					divide
				else
					push elem
			end
		end
		value
	end
end