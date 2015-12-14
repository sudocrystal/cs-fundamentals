def fact(n)
  if n == 1 || n == 0 #base case
    return 1
  end
  return n * fact(n-1) #recursive case
end

def fib(n)
  if n < 1
    return 0
  elsif n == 2 || n == 1
    return 1
  end
  return fib(n-1) + fib(n-2)
end

def pal(s)
  if s.length <= 1
    return true
  end
  w = s.split("")
  l = w.pop
  f = w.shift
  s = w.join("")
  if l == f
    pal(s)
  else
    return false
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
