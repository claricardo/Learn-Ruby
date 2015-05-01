def reverser 
	yield.split(" ").map {|item| item.reverse }.join(" ")
end

def adder(a = 1)
	yield + a
end

def repeater (n = 1)
	n.times { yield }
end