def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	if a.length == 0 || a.length == 1
		return a
	end

	# split the list in half
	one, two = split_array(a)

	# merge sort each half
	one = mergesort(one)
	two = mergesort(two)

	# combine the sorted halves
	return combine(one, two)
end


def split_array(a)
<<<<<<< HEAD
	if a.length % 2 == 0
		mid_index = a.length / 2 - 1
	else
		mid_index = (a.length - 2) / 2
	end
	return a[0..mid_index], a[(mid_index + 1)..(a.length - 1)]
end

# precondition: a and b are sorted
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
=======
	# find the middle index
	# split the array in half - take a look at take and drop in the ruby docs, or use ranges 
	# return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	# counters pointing to the index of the smallest elements in each array
	# check that we have elements to compare
		# push the smaller element onto the result array
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result
>>>>>>> upstream/master
end


# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
