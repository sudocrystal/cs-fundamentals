def fact(n)
  if n == 1 || n == 0
    return 1
  end
    return n * fact(n-1)
end

def fib(n)
  if n == 1 || n == 2
    return 1
  end
  return fib(n-1) + fib(n-2)
end

#use the length of the word to create the base case
#in the recursive you should be throwing out two letters
def pal?(s)
  if (s.length == 1) || (s.length == 0)
    return true
  end
  if s.slice!(0) != s.slice!(-1)
     return false
  else
    return pal(s)
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
