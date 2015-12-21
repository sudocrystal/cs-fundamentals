require 'pry'
def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	if a.length <= 1
		return a
	end
	# split the list in half
	left = a[0..(a.length / 2 - 1)]
	right = a[(a.length / 2)..- 1]
	# merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	return combine(left, right)
end

# def split_array(a)
	# find the middle
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
# end

# precondition: a and b are sorted
def combine(left, right) ## will not call combine within combine
	# create a results array
	results = []
	# check that we have elements to compare
	# until there is nothing left in the right or left arrays:
	until left.length == 0 || right.length == 0
	# push the smaller element into the results array and then get rid of it (slice!).
		if left[0] <= right[0]
			results.push(left.slice!(0))
		else
			results.push(right.slice!(0))
		end
	end
	# Add the arrays to each other if they're not nil.
	results += left if !left.nil?
	results += right if !right.nil?
	return results
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
