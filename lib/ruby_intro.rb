# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	result = 0
	arr.each {|x| result = result + x}
	result
end

def max_2_sum arr
	#max1 = -Float::INFINITY
	#max2 = -Float::INFINITY
	#arr.each {|x|
	#	if x >= max1
	#		max2 = max1
	#		max1 = x
	#	elsif x >= max2
	#		max2 = x
	#	end
	#}
	#if max1 == -Float::INFINITY
	#	max1 = 0
	#end
	#if max2 == -Float::INFINITY
	#	max2 = 0
	#end
	#max1 + max2
	arr.max(2).sum		
end

def sum_to_n? arr, n
	arr.combination(2) {|c| return true if c.sum == n}
	return false
end

# Part 2

def hello(name)
	"Hello, " + name
end

def starts_with_consonant? s
	#/^[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/.match(s)
	/^[bcdfghjklmnpqrstvwxyz]/i.match(s)
end

def binary_multiple_of_4? s
	if /^[01]+$/.match?(s)
		s.to_i(2) % 4 == 0
	else
		false
	end
end

# Part 3

class BookInStock

	def initialize(isbn, price)
		if isbn == ""
			raise ArgumentError, 'ISBN is missing'
		end
		@isbn = isbn;
		if price <= 0
			raise ArgumentError, 'Price less than or equal to zero'
		end
		@price = price;
	end
	
	attr_accessor :isbn
	attr_accessor :price
	
	def price_as_string
		"$" + sprintf("%0.02f", @price)
	end
end
