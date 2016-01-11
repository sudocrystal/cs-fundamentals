def fact(n)
  # base case
  return 1 if n == 1 || n == 0
  # recursive case
  return n * fact(n - 1)
end

def fib(n)
  # base case
  return 1 if n == 1 or n == 2
  # recursive case
  return fib(n-1) + fib(n-2)
end

# use length of word to create base case
# recursive case - throw out two letters every time you recurse
def pal(s)
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
