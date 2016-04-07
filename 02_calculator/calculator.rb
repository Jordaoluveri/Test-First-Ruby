def add(a, b)
	a + b
end

def subtract(a,b)
	a - b
end

def sum(numbers)
	numbers.inject(0) {|sum,i| sum + i }
end

def multiply(*numbers)
	numbers.inject(:*)
end

def power(base, exponent)
	base**exponent
end

def factorial(number)
	if number == 0
		return 1
	end
	(1..number).to_a.inject(:*)
end