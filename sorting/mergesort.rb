def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.length <= 1
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	return combine(left, right)
end

# this definitely works and returns an array of two arrays
def split_array(a)
	first = a[0...(a.length / 2)]
	second = a[(a.length / 2)..-1]

	return first, second
	# find the middle
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	result = []
	# counters pointing to the index of the smallest elements in each array
	# a_small = a[0]
	# b_small = b[0]
	# binding.pry

	# check that we have elements to compare
	while a.length > 0 && b.length > 0
		if a[0] <= b[0]
			# push the smaller element onto the result array
			result.push(a[0])
			a.delete_at(0)
		else
			result.push(b[0])
			b.delete_at(0)
		end
	end

	# if there are elements left over in b, move them to result
	if b.length > 0
		result.push(b)
	# if there are elements left over in a, move them to result
	elsif a.length > 0
		result.push(a)
	end

	return result.flatten
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
