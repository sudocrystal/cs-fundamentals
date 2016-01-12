def fact(n)
  ##base case
  if n == 1 || n == 0
    return 1
  end
  #recursive case
  return n * fact(n-1)
end

# returns the nth number in the fibonacci sequence
def fib(n)
  # base case
  if n == 1 || n == 2
    return 1
  end
  # recursive case
  return fib(n - 1) + fib(n - 2)
end

# hints: when testing for base case, use length of word
# recursive case: should be throwing out two letters each time
def pal(s)
  # base case
  if s.length == 0 || s.length == 1
    return true
  end
  #recursive case
  if s[0] != s[- 1]
    return false
  else
    pal(s[1..-2])
  end
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
