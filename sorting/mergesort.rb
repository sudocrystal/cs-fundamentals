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
	return combine(left, right)
end

def split_array(a)
	# find the middle
  # take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	## each_slice is a ruby enumerator, round method rounds up
	take,drop = a.each_slice( (a.size/2.0).round ).to_a
	# mid = a.length / 2
	# take = a[0..mid-1]
	# drop = a[mid..-1]
	# return left and right halves of array as separate arrays
	##return left, right
	# [a[0..mid] , a[mid+1..-1]]
	return take, drop
	# return a.take(mid), a.drop(mid)
end

# precondition: a and b are sorted
def combine(left, right)
	# create a results array
	results = []
	# counters pointing to the index of the smallest elements in each array
	# first_counter = 0
	# second_counter = 0
	# check that we have elements to compare
	until left.length == 0 || right.length == 0
		if left[0] <= right[0]
			# push the smaller element onto the result array
			results.push(left.slice!(0))
		else
			results.push(right.slice!(0))
		end
	end
		# if there are elements left over in a, move them to result
			results += left if left.length != 0
		# if there are elements left over in b, move them to result
			results += right if right.length != 0
	return results
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
