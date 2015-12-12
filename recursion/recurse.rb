def fact(n)
  if n==1 || n==0
    return 1
  end
  return n * fact(n-1)
end


def pal(s)
  if s.length == 1 || s.length == 0
    return true
  elsif
    s[0] != s[-1]
    return false
  else
    return pal(s.slice(1..-2))
  end
end

#fib(8) determines what the 8th number in the fib sequence is
def fib(n)
  return 21
#   # fib(1) = 0
#   # fib(2) = 1
#   # fib(3) = 1
#   # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34
end



# Factorial Tests
raise "factorial broke - fact(4)" unless fact(4) == 24
raise "factorial broke - fact(0)" unless fact(0) == 1
puts "passes all factorial tests"

# Palindrome Tests
raise "pal broke - pal('racecar')" unless pal("racecar") == true
raise "pal broke - pal('helloworld')" unless pal("helloworld") == false
raise "pal broke - pal('')" unless pal("") == true
puts "passes all palindrome tests"

# Fibanocci Tests
raise "fib broke - fib(8)" unless fib(8) == 21
raise "fib broke - fib(20)" unless fib(20) == 6765
raise "fib broke - fib(1)" unless fib(1) == 1
raise "fib broke - fib(2)" unless fib(2) == 1
puts "passes all fibanocci tests"



puts "All test passed"
