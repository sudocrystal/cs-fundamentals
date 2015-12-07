
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
# The insertion sort method compares values in the unsorted data set to values
# in the sorted data set. If the value is greater than the last value in the sorted data set,
# it considers that piece of data sorted and moves on to the next piece of data in the data set.
# If the value is smaller than the last piece of data in the sorted data set, it moves that piece of data
# until the value is less than the next value in the sorted data set.

def insertion_sort(arr)
	# step 1 - set variables. Placeholder_index starts at index 1 rather than index 0 because you
	# are always comparing the placeholder to what is to the left of the placeholder
	placeholder_index = 1
	# until the placeholder_index is at the index value as the length of the array...
		until placeholder_index > (arr.length - 1)
			current_index = placeholder_index
			# the compare_index is the value to the right of the placeholder/compare_index
			compare_index = current_index - 1
			# until the current_index is greater than or equal to the compare_index
			until arr[current_index] >= arr[compare_index]
				# swap the two numbers
				arr[current_index], arr[compare_index] = arr[compare_index], arr[current_index]
				# compare left number and right
				current_index -= 1
				compare_index -= 1 unless compare_index == 0
			end
			placeholder_index += 1
		end
return arr
end

# TODO: write selection sort

# The method starts with the first element in the array. It scans the rest of the array
# for the minimum element, then places that value at the beginning of the array, in sorted order.

def selection_sort(arr)
	# start with the first element in the array.
	# starting_index will increment 1 every time the loop runs
	starting_index = 0
	# until you get to the end of the index...
	until starting_index > (arr.length - 1)
		# smallest_index will be at the starting index
		smallest_index = starting_index
		# the variable compare_index will be equal to the starting_index + 1
		compare_index = starting_index + 1
		# take the length of the array from the starting index (will only include unsorted data)
		arr[starting_index..(arr.length - 2)].length.times do
			# if the value of compare_index is smaller than the smallest_index, the smallest_index becomes the compare index
			if arr[compare_index] <= arr[smallest_index]
				smallest_index = compare_index
			end
			# compare_index will then increment in relation to the incrementaiton of the starting_index
			compare_index += 1
		end
		#starting_index and smallest_index swap
		arr[starting_index], arr[smallest_index] = arr[smallest_index], arr[starting_index]
		# starting_index increments by 1
		starting_index += 1
	end
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
