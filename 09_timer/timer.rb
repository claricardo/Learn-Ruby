class Timer
	def seconds
		@seconds = 0
	end

	def seconds= some_seconds
		@seconds = some_seconds
	end
	
	def padded value
		# Alternative: (value < 10 ? "0" : "") + value.to_s
		"%02d" % value
	end
	
	def time_string
		separator = ':'
		aux_time = @seconds
		hours = padded(aux_time / 3600)
		aux_time %= 3600
		mins = padded(aux_time / 60)
		secs = padded(aux_time % 60)
		return hours + separator + mins.to_s + separator + secs
	end
end