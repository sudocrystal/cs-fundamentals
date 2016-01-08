def fact(n)
  # base case
  return 1 if n == 0 || n == 1
  # recursive case
  return n * fact(n - 1)
end

def fib(n)
  # base case
  return 1 if n == 1 || n == 2
  # recursive case
  return fib(n - 2) + fib(n - 1)
end

def pal(s)
  # base case
  return true if s.length == 0 || s.length == 1
  if s[0] != s[-1]
    return false
  else
    # recursive case
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
raise "pal broke - pal('abcddcba')" unless pal("abcddcba") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

puts "All test passed"
