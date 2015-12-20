def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	# split the list in half
	# merge sort each half
	# combine the sorted halves
	if a.length <=1
		return a
	end
	left, right = split_array(a)
	left = mergesort(left)
	right = mergesort(right)
	combine(left, right)
end

def split_array(a)
	# find the middle
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	left = a[0...(a.length/2)]
	right = a[(a.length/2)..-1]
	return left, right
end

# precondition: a and b are sorted
def combine(left, right)
	# create a results array
	# counters pointing to the index of the smallest elements in each array
	# check that we have elements to compare
	# push the smaller element onto the result array
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result
	results = []
	ln = 0
	rn = 0
	while !left[ln].nil? || !right[rn].nil? do
		if right[rn].nil?
			results.push(left[ln])
			ln += 1
		elsif left[ln].nil?
			results.push(right[rn])
			rn += 1
		else
			if left[ln] < right[rn]
				results.push(left[ln])
				ln += 1
			else
				results.push(right[rn])
				rn += 1
			end
		end
	end
	return results
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
