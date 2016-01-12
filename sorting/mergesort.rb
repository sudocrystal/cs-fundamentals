def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.length <= 1
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	# [left, right].each { |half| mergesort(half) }
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	return combine(left, right)
end

def split_array(a)
	# find the middle
	mid = a.size / 2
  	# take = Returns first n elements from the array.
		# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	return a[0...mid], a[mid..-1]
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	results = Array.new
	# counters pointing to the index of the smallest elements in each array
	l, r = 0, 0
	# check that we have elements to compare
	until results.length == (a + b).length
		if !a[l].nil? && !b[r].nil?
			# push the smaller element onto the result array
			if a[l] <= b[r]
				results << a[l]
				l += 1
			else
				results << b[r]
				r += 1
			end
		# if there are elements left over in a, move them to result
		elsif !a[l].nil?
			results << a[l]
			l += 1
		# if there are elements left over in b, move them to result
		else
			results << b[r]
			r += 1
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
