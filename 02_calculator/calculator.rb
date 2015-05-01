def add a, b
	return a + b
end

def subtract a, b
	return a - b
end

def sum array
	return array.reduce(0, :+)
end

def multiply a, b, *others
	result = 1
	others.each {|num| result *= num }
	return a * b * result
end

def power a, b 
	return a ** b
end

def factorial num
	fact = 1
	(1..num).each {|n| fact *= n}
	return fact
end