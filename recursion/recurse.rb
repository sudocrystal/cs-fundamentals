def fact(n)
  ## base case
  if n==1 || n== 0
    return 1
  end
  ## recursive case
  return n * fact(n-1)
end

# 1 1 2 3 5 8 13 ......
# what is the nth fibonacci number
# fib(1) == 1
# fib(2) == 1
# fib(3) == 2
# fib(4) == 3
# fib(5) == 5
def fib(n)
  if n == 1 || n == 2
    return 1
  end
  return fib(n-1) + fib(n-2)
end

# a palindrome is the same word read forwards and backwards
# this method should test if the input word is a palindrome
# hint - for base case use length of the word
# in recursive cases, should be throwing out 2 letters each time you recurse
def pal(s)
  #base case
  if n.length == 1
    return true
  end
  #recursive case
  if
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
