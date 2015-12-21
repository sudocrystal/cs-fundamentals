def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	if a.length <= 1
		return a
	end

	left, right = split_array(a)

	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	return combine(left, right)
end

def split_array(a)
	# find the middle
	mid = (a.length/2).to_i
	left = a.take(mid)
	right = a.drop(mid)
	return left, right
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	results = []
	# counters pointing to the index of the smallest elements in each array
	number_of_elements_in_left_array = a.length
	number_of_elements_in_right_array = b.length

	index_smallest_unpicked_left_array = 0
	index_smallest_unpicked_right_array = 0
	index_that_needs_to_be_filled_in_main_array = 0

	while index_smallest_unpicked_left_array < number_of_elements_in_left_array && index_smallest_unpicked_right_array < number_of_elements_in_right_array
		if a[index_smallest_unpicked_left_array] <= b[index_smallest_unpicked_right_array]
			results[index_that_needs_to_be_filled_in_main_array] = a[index_smallest_unpicked_left_array]
			index_that_needs_to_be_filled_in_main_array += 1
			index_smallest_unpicked_left_array += 1
		else
			results[index_that_needs_to_be_filled_in_main_array] = b[index_smallest_unpicked_right_array]
			index_that_needs_to_be_filled_in_main_array += 1
			index_smallest_unpicked_right_array += 1
		end
	end

	while index_smallest_unpicked_left_array < number_of_elements_in_left_array
		results[index_that_needs_to_be_filled_in_main_array] = a[index_smallest_unpicked_left_array]
		index_smallest_unpicked_left_array += 1
		index_that_needs_to_be_filled_in_main_array += 1
	end

	while index_smallest_unpicked_right_array < number_of_elements_in_right_array
		results[index_that_needs_to_be_filled_in_main_array] = b[index_smallest_unpicked_right_array]
		index_smallest_unpicked_right_array += 1
		index_that_needs_to_be_filled_in_main_array += 1
	end


	# check that we have elements to compare
		# push the smaller element onto the result array

	# if there are elements left over in a, move them to result
	results.push(a)
	# if there are elements left over in b, move them to result
	results.push(b)

end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
