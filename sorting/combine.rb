# assuming two sorted arrays
require 'pry'

def combine(one, two)
  results = []
  while !one.empty? && !two.empty?
    min1 = one[0]
    min2 = two[0]
    if min1 <= min2
      results.push(min1)
      one.shift
    else
      results.push(min2)
      two.shift
    end
  end

  while !one.empty?
    min1 = one[0]
    results.push(min1)
    one.shift
  end

  while !two.empty?
    min2 = two[0]
    results.push(min2)
    two.shift
  end

  return results
end
