require 'pry'
def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.length <= 1
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	combine(left,right)
end

def split_array(a)
	# find the middle
	mid = a.length/2
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	return a[0..mid-1],a[mid..-1]
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	results = []
	# counters pointing to the index of the smallest elements in each array
	# check that we have elements to compare
		# push the smaller element onto the result array
	while a.length > 0 && b.length > 0
		amin=a[0]
		bmin=b[0]
		if amin < bmin
			results.push(a.shift)
		else
			results.push(b.shift)
		end
	end
	# if there are elements left over in a, move them to result
	# if there are elements left over in b, move them to result
	if a.length > 0
		a.each do |num|
			results.push(num)
		end
	else
		b.each do |num|
			results.push(num)
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
