def mergesort(a)
  # if the array size is 0|1 then the list is considered sorted, return sorted array
  if a.length <= 1
    return a
  end

  # split the list in half
  left, right = split_array(a)

  # merge sort each half
  left = mergesort(left)
  right = mergesort(right)

  # combine the sorted halves
  combine(left, right)
end

def split_array(a)
  # find the middle
  mid = a.length / 2

  # take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
  left = a.take(mid)
  right = a.drop(mid)

	# return left and right halves of array as separate arrays

	# [a[0..mid] , a[mid+1..-1]]
	return left, right
	# find the middle index
	# split the array in half - take a look at take and drop in the ruby docs, or use ranges 
	# return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
end

# precondition: a and b are sorted
def combine(a, b)
  # create results array
  results = Array.new
	
	# counters pointing to the index of the smallest elements in each array
  first_counter = 0
  second_counter = 0

  # check that we have elements to compare
  # push the smaller element onto the result array
  unless a.empty? && b.empty?
    if a[first_counter] >= b[second_counter]
      results << b[first_counter]
      first_counter += 1
    else 
      results << a[second_counter]
      second_counter += 1
    end
  end

	# if there are elements left over in a, move them to result
  if a.length > 0 
    results.push(a)
  end

  if b.length > 0 
    results.push(b)
  end
  

	# if there are elements left over in b, move them to result
  
  return results
	# create a results array
	# counters pointing to the index of the smallest elements in each array
	# check that we have elements to compare
		# push the smaller element onto the result array
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
