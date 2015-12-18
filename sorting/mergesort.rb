def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	if a.length <= 1
		return a
	end
	# split the list in half
	left,right = split_array(a)
	# merge sort each half
	mergesort(left)
	mergesort(right)
	# combine the sorted halves
	return combine(left,right)
end

def split_array(a)
	# find the middle
  # take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	## each_slice is a ruby enumerator, round method rounds up
	take,drop = a.each_slice( (a.size/2.0).round ).to_a
	# return left and right halves of array as separate arrays
	return take,drop
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
end

# precondition: a and b are sorted
def combine(left, right)
	# create a results array
	results = []
	# counters pointing to the index of the smallest elements in each array
	first_counter = 0
	second_counter = 0
	# check that we have elements to compare
if left.length > 0 && right.length > 0
	if left[first_counter] >= right[second_counter]
		# push the smaller element onto the result array
		results.push(right[second_counter])
		second_counter +=1
	else
		results.push(left[first_counter])
		first_counter += 1
	end
end
	# if there are elements left over in a, move them to result
	if left.length > 0
		results.push(left)
	end
	# if there are elements left over in b, move them to result
	if right.length > 0
		results.push(right)
	end

end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
