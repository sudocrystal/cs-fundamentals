def fact(n)
  return 1 if n == 1 || n == 0 # Base case
  n * fact(n - 1) # Recursive case
end

def fib(n)
  return 1 if n == 1 || n == 2 # Base case
  fib(n - 1) + fib(n - 2) # Recursive case
end

def pal(s)
  return true if s.length == 1 || s.length == 0 # Base Case
  if s[0] == s[-1]
    s[0] = ''
    s[-1] = ''
    pal(s) # Recursive case
  else
    false
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
raise "pal broke - pal('helloworlh')" unless pal("helloworl") == false
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

puts "All test passed"
