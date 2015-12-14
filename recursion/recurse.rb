def fact(n)
  if n == 1 || n == 0
    return 1
  end
  return n * fact(n-1)
end

def fib(n)
  if n<2
    return n
  else
    return fib(n-1) + fib(n-2)
  end

end

def pal(s)
  if s.length == 0 || s.length == 1
    return true
  else
   if s[0] == s[-1]
     pal(s[1..-2])
   else
     false
   end
 end
end

# Factorial Tests
raise "factorial broke - fact(4)" unless fact(4) == 24
raise "factorial broke - fact(0)" unless fact(0) == 1
puts "passes all factorial tests"

# Fibanocci Tests
# 1, 1, 2, 3, 5, 8, 13, 21
# what is the nth Fibonacci number?
# fib(1) = 1
# fib(2) = 1
# fib(3) = 2
# fib(4) = 3
#      = fib(3) + fib(2)

raise "fib broke - fib(8)" unless fib(8) == 21
raise "fib broke - fib(20)" unless fib(20) == 6765
raise "fib broke - fib(1)" unless fib(1) == 1
raise "fib broke - fib(2)" unless fib(2) == 1
puts "passes all fibanocci tests"

# Palindrome Tests
# hints-when testing for the base case, use the length of the word to create base case
# in recursive cases, throwing out two letters of the word every time you recurse

raise "pal broke - pal('racecar')" unless pal("racecar") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

puts "All test passed"


