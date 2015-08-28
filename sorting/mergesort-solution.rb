def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.size <= 1
	# split the list in half
	l, r = split_array(a)
	# merge sort each half
	l = mergesort(l)
	r = mergesort(r)
	# combine the sorted halves
	result = combine(l,r)
end

def split_array(a)
	# find the middle
	mid = a.size / 2
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	[a.take(mid), a.drop(mid)]
	# return a.take(mid), a.drop(mid)
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	result = []
	# counters pointing to the index of the smallest elements in each array
	small_a = 0
	small_b = 0

	# check that we have elements to compare
	while small_a < a.length && small_b < b.length do
		# push the smaller element onto the result array
		if a[small_a] < b[small_b]
			result.push(a[small_a])
			small_a += 1
		else
			result.push(b[small_b])
			small_b += 1
		end
		# puts "result " + result.to_s
	end
	# if there are elements left over in a, move them to result
	while small_a < a.length do
		result.push(a[small_a])
		small_a += 1
	end
	# if there are elements left over in b, move them to result
	while small_b < b.length do
		result.push(b[small_b])
		small_b += 1
	end
	return result

end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
