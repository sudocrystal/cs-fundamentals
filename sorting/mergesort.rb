require 'pry'
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
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	left = a[0..(a.length - 1)/2]
	right = a[(a.length - 1)/2 + 1..a.length - 1]
	return left, right
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	results = Array.new(a.length + b.length)

	# counters pointing to the index of the smallest elements in each array
	index_a = 0
	index_b = 0
	results_index = 0

	# check that we have elements to compare
	while results_index < results.length
		# if there are elements left over in b, move them to result
		if index_a == a.length
			results[results_index] = b[index_b]
			index_b += 1
		# if there are elements left over in a, move them to result
		elsif index_b == b.length
			results[results_index] = a[index_a]
			index_a += 1
		# push the smaller element onto the result array
		elsif a[index_a] <= b[index_b]
			results[results_index] = a[index_a]
			index_a += 1
		else
			results[results_index] = b[index_b]
			index_b += 1
		end
		results_index += 1
	end
	return results
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
