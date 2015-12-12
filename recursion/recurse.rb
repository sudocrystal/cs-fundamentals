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

def fib(n)
  if n == 1
    return 1
  elsif n == 2
    return 1
  else
    return fib(n-2) + fib(n-1)
  end
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
