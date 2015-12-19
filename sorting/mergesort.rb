require 'pry'

def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
  return a if a.length <= 1
  # split the list in half
  left, right =  split_array(a)
  # merge sort each half
  right = mergesort(right)
  left = mergesort(left)
	# combine the sorted halves
  return combine(left, right)
end

def split_array(a)
  mid = (a.length / 2) - 1
	left = a[0..mid]
  right = a[mid+1..-1]
	return left, right
end

# precondition: a and b are sorted
def combine(left, right)
	# create a results array
  results = []
	# check that we have elements to compare
  while right.length > 0 && left.length > 0
		# push the smaller element onto the result array
    if right[0] <= left[0]
      results.push(right[0])
      right.delete_at(0)
    elsif left[0] < right[0]
      results.push(left[0])
      left.delete_at(0)
    end
  end
  # if there are elements left over in a, move them to result
  if !right.empty?
    results.push(right)
  # if there are elements left over in b, move them to result
  elsif !left.empty?
    results.push(left)
  end
  return results.flatten
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
