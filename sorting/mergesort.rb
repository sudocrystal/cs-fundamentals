def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.length <= 1
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	return combine(left,right)
end

def split_array(a)
	size = a.length
	# find the middle
	mid = size/2
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	if size % 2 = 0
		return a.take(mid), a.drop(mid)
	else
		return a.take(mid), a.drop(mid - 1)
	end
	# find the middle index
	# split the array in half - take a look at take and drop in the ruby docs, or use ranges
	# return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
end

# precondition: a and b are sorted
def combine(a, b)
	results = Array.new
#check to see if there is only one element left

#should this be a case statement?
	if a.first >= b.first
		results.push(b.first)
		b.drop(first)
	elsif b.first >= a.first
		results.push(a.first)
		a.drop(first)
	elsif b == []	&& a != []
		results.push(a)
	elsif a == []	&& b != []
		results.push(b)
	end

=======
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
