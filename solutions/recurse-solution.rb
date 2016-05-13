def fact(n)
   return 1 if n <= 1
   n * fact(n-1)
end

# 1, 1, 2, 3, 5, 8, 13...
##### fib(1) = 1
##### fib(2) = 1
# fib(3) = fib(2) + fib(1)
# fib(4) = fib(3) + fib(2)
###### fib(n) = fib(n-1) + fib(n-2)
def fib(n)
   return 1 if n == 1
   return 1 if n == 2
   fib(n-1) + fib(n-2)
end

# psuedocode for palindrome
# if there's 1 or 0 letters, return true
# if first letter and last letter match
#    recurse on all but first and last letter --> return that result
# if first and last don't match, return false
def pal(s)
    return true if s.length <= 1
	return false if s[0] != s[s.length-1]
	pal(s[1..s.length-2])   
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
