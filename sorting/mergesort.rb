def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	# split the list in half
	# merge sort each half
	# combine the sorted halves
end

def split_array(a)
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
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
