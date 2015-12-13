def fact(n)
  if n == 1 || n == 0   # base cases
    return 1
  end
  return n * fact(n-1)  # recursive case
end

# 1 1 2 3 5 8 13 21
# must use fib in method
# write some comments
# base cases are fib(1) and fib(2)
# write out some examples, then generalize
def fib(n)
  if n == 1 || n == 2
    return 1
  end
  return fib(n-2) + fib(n-1)
end

# may be harder
# use the length of the word in order to create the base case
# should be throwing out 2 letters of your word every time you recurse
# should return true/false
def pal(s)
  if s.length == 0 || s.length == 1
    return true
  end
  if s[0] == s[-1]
    pal(s[1..-2])
  else
    return false
  end
end

# Factorial Tests
raise "factorial broke - fact(4)" unless fact(4) == 24
raise "factorial broke - fact(0)" unless fact(0) == 1
puts "passes all factorial tests"

# Fibonacci Tests
raise "fib broke - fib(8)" unless fib(8) == 21
raise "fib broke - fib(20)" unless fib(20) == 6765
raise "fib broke - fib(1)" unless fib(1) == 1
raise "fib broke - fib(2)" unless fib(2) == 1
puts "passes all fibonacci tests"

# Palindrome Tests
raise "pal broke - pal('racecar')" unless pal("racecar") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

puts "All test passed"
