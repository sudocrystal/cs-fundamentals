def fact (n)
	if n == 1 || n == 0
		return 1
	end
	return n * fact(n-1)
end

#1123581347112
#what is the nth fibanocci number?
# base case 1 and 2
# fib(1) = 1
# fib(2) = 1
# fib(3) = 2
# fib(4) = 3 = fib(3) + fib(2)
# fib(5) = fib(4) + fib(3)
# fib (n) = fib(n-1) + fib(n-2)
def fib(n)
  if n == 1 || n == 2
    return 1
  end
  return fib(n-1) + fib(n-2)
end

#palendrome problem
#hint :when you are testing for base case, use length of work
#hint: when you are doing your recursive case, you should be throwing out two letters each time you recurse
def pal(s)
	if s.length == 1 || s.length == 0
		return true
	end
	return
	#should this be an loop?
	pal(s.first) == pal(s.last)
	s.drop(first)
	s.pop
	#should there be a if s.length > 1 return false?
end

# Factorial Tests
raise "factorial broke - fact(4)" unless fact(4) == 24
raise "factorial broke - fact(0)" unless fact(0) == 1
puts "passes all factorial tests"

# Fibanocci Tests
raise "fib broke - fib(8)" unless fib(8) == 21
raise "fib broke - fib(20)" unless fib(20) == 6765
raise "fib broke - fib(1)" unless fib(1) == 1
raise "fib broke - fib(2)" unless fib(2) == 1
puts "passes all fibanocci tests"

# Palindrome Tests
raise "pal broke - pal('racecar')" unless pal("racecar") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

puts "All test passed"
