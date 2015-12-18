require 'pry'
def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	if a.length <= 1
		return a
	end
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	a = mergesort(left)
	b = mergesort(right)
	# combine the sorted halves
	combine(a, b)
end

def split_array(a)
	# find the middle
	mid = (a.length - 1)/2
  	# take = Returns first n elements from the array.
	# drop = Drops first n elements and returns the rest of the elements.
	# return left and right halves of array as separate arrays
	# [a[0..mid] , a[mid+1..-1]]
	# return a.take(mid), a.drop(mid)
	return a[0..mid], a[(mid+1..-1)]
end

# precondition: a and b are sorted
def combine(a, b)
	# create a results array
	results = Array.new
	# counters pointing to the index of the smallest elements in each array
	a_smallest = 0
	b_smallest = 0
	# check that we have elements to compare (this is a loop, ends when one of the array runs out of elements)
	until a[a_smallest] == nil || b[b_smallest] == nil
		if a[a_smallest] > b[b_smallest]
			results.push(b[b_smallest])
			b_smallest += 1
		else
			results.push(a[a_smallest])
			a_smallest += 1
		end
	end
	# when one array runs out of elements, push the smaller element onto the result array

		# both of these should never occur (otherwise we're still in the loop?)
	if a[a_smallest] != nil
		# if there are elements left over in a, move them to result
		a[a_smallest..-1].each do |element|
			results.push(element)
		end
	elsif b[b_smallest] != nil
		# if there are elements left over in b, move them to result
		b[b_smallest..-1].each do |element|
			results.push(element)
		end
	end
	return results
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
original = a.shuffle
puts "ORIGINAL \n" + original.to_s
mergesorted = mergesort(a)
puts "AFTER MERGESORT \n" + mergesorted.to_s
puts "You did it!" if original.sort == mergesorted
