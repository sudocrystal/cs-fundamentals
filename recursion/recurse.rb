require 'pry'

def fact(n)
  # base case
  if n == 1 || n == 0
    return 1
  end
  # recursive case
  return n * fact(n - 1)
end

# 1 1 2 3 5 8 13...
# what is the nth fibanocci number?
# skip fib(1) and fib(2) b/c are base cases
# fib(1) = 1
# fib(2) = 1
# fib(3) = 2
# fib(4) = fib(3) + fib(2) = 3
# fib(5) = fib(4) + fib(3) = 5
# fin(n) = fib(n-1) + fib(n-2)
def fib(n)
  # base case
  if n == 1 || n == 2
    return 1
  end
  # recursive case
  return fib(n-1) + fib(n-2)
end

# hint: testing for base - use length of the word in order to create base case
# hint: in recursive case - should be throwing out two letters each time you recurse
# palindrome = word is the same forward and backword
def pal(s)
  s_array = s.split("")
  # base case
  if s_array.length == 1 || s_array.length == 0
    return true
  end
  # recursive case
  if s_array.first == s_array.last
    s = pal(s_array.slice(1..-2).join(""))
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
