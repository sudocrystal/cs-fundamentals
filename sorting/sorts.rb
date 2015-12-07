
# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
	array = []
	rand_size = rand(10) + 1
	(0..rand_size).each do
		array.push( rand(1000) )
	end
	return array
end

# TODO: write insertion sort
def insertion_sort(arr)
	# variables for holding our two comparisons and the array maker
	c = 0
	d = 1
	mark = 1
	# repeat unill you are through the whole array
	while mark <= arr.length
	# assign the values in arr[c] to a and arr[d] to b
	a = arr[c]
	b = arr[d]
		# if they are not in ascending order
		if a > b
			# if c is 0
			if c == 0
				# assign the value of b to arr[c] and the value of a to arr[d]
				arr[c] = b
				arr[d] = a
			# increase c,d, & e by 1
			c += 1
			d += 1
			mark += 1
			# if is is not 0
			else
				# assign the value of b to arr[c] and the value of a to arr[d]
				arr[c] = b
				arr[d] = a
				# decriment c and d by 1
				c -= 1
				d -= 1
			end
		# if they are in ascending order
		else
			# increase c,d, & e by 1
			c += 1
			d += 1
			mark += 1
		end
	end
	return arr
end

# TODO: write selection sort
def selection_sort(arr)
# set a variable called mark to 0
mark = 0
# make sure that we check every number
while mark <= arr.length
	# set an index marker to 0
	i = 0
	# go through every item in the array
	arr.each do |num|
	# set the variable var to the value of the array at index position i
	var = arr[i]
		# when the value of var is greater than the value of num
		if var > num
			# set the variable low to the value of num
			low = num
			# set the variable var to the value of num
			var = num
		end
		# increment the value of the variable i by 1
		i += 1
	end
	swap = arr[i]
	arr[i] = low
end
	return arr
end

begin
	numbers = create_array()
	sorted_numbers = numbers.dup.sort!
	puts "Generating an array that's not sorted..."
end while numbers == sorted_numbers

puts "original array = "
print numbers
puts "\n\n"

puts "after RUBY SORT, array = "
print sorted_numbers
puts "\n\n"

puts "after INSERTION SORT, array = "
insertion_numbers = insertion_sort(numbers.dup)
print insertion_numbers
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers
puts "\n\n"

puts "after SELECTION SORT, array = "
selection_numbers = selection_sort(numbers.dup)
print selection_numbers
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers
puts "\n\n"


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
