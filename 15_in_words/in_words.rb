class Fixnum
	@@units = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	
	def in_words
		case self
			when 0..9
				String.new(@@units[self % 10])
			when 10
				'ten'
			when 11
				'eleven'
			when 12
				'twelve'
			when 13..99
				value = (13..19).include?(self) ? (self % 10) : (self / 10)
				word = value.in_words
				word.sub!('o', 'en') if word == 'two'
				word.sub!('ree', 'ir') if word == 'three'
				word.sub!('ve', 'f') if word == 'five'
				word.chop! if word == 'eight'
				word.sub!('ou', 'o') if self == 40
				word += ((13..19).include?(self) ? 'teen' : 'ty')
				word += self > 20 && self % 10 != 0 ? " " + @@units[self % 10] : ""
			when 100..999
				@@units[self / 100] + " hundred" + ((self % 100) > 0 ? " " + (self % 100).in_words : "")
			when 1000..999999
				(self / 1000).in_words + " thousand" + ((self % 1000) > 0 ? " " + (self % 1000).in_words : "")
			when 1000000..999999999
				(self / 1000000).in_words + " million" + ((self % 1000000) > 0 ? " " + (self % 1000000).in_words : "")
		end
	end
end

class Bignum

	def in_words
		if self < 1000000000000
			(self / 1000000000).in_words + " billion" + ((self % 1000000000) > 0 ? " " + (self % 1000000000).in_words : "")
		else
			(self / 1000000000000).in_words + " trillion" + ((self % 1000000000000) > 0 ? " " + (self % 1000000000000).in_words : "")
		end
	end

end