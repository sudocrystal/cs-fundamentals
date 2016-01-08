require 'pry'

def mergesort(a)
	# if the array size is 0|1 then the list is considered sorted, return sorted array
	return a if a.length == 0 || a.length == 1
	# split the list in half
	left, right = split_array(a)
	# merge sort each half
	left = mergesort(left)
	right = mergesort(right)
	# combine the sorted halves
	combine(left, right)
end

def split_array(a)
	mid = a.length / 2
	return a.take(mid), a.drop(mid)
end

# precondition: a and b are sorted
def combine(a, b)
	sorted = []
	while a.length != 0 && b.length != 0
		a[0] < b[0] ? (sorted << a.shift) : (sorted << b.shift)
	end
  a.length == 0 ? (sorted += b) : (sorted += a)
	return sorted
end

# puts "Testing combine"
# a = [2, 3, 4, 5, 12, 20]
# b = [2, 3, 9]
# puts "The arrays are #{a} and #{b}"
# puts "The two arrays combined are #{combine(a, b)}"
# a = [1]
# b = [0, 4, 5, 6, 7, 8, 9]
# puts "The arrays are #{a} and #{b}"
# puts "The two arrays combined are #{combine(a, b)}"

# TEST IT
d = [6,23,53,1,2,5,62,61,33,21,14,6,23]
d = d.shuffle
puts "ORIGINAL \n" + d.to_s
d = mergesort(d)
puts "AFTER MERGESORT \n" + d.to_s
