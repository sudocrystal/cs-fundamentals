require 'pry'

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
	# Start at index 0
	# Check index 1 compared to 0,
	# if it's smaller than the one before, they switch places.
	# Check the one before that and keep switching until
	# it's bigger than the one on the left.
	# Then, check where you left off and continue process.
	placeholder_index = 1
	until placeholder_index > (arr.length - 1)
		current_index = placeholder_index
		compare_index = current_index - 1
		until arr[current_index] >= arr[compare_index]
			arr[current_index], arr[compare_index] = arr[compare_index], arr[current_index]
			current_index -= 1
			compare_index -= 1 unless compare_index == 0
		end
		placeholder_index += 1
	end
	return arr
end

# TODO: write selection sort
# The first number is considered the smallest
# a placeholder is kept for the index.
# go through each item in the array
# if it finds a smaller one, that one is now the smallest.
# Once you hit the end of the array,
# replace smallest with the number in the placeholder.
# then go to the next index (placeholder + 1) and do the same thing over.
# ***** THIS IS NOT WORKING *****
def selection_sort(arr)
	placeholder_index = 0
	until placeholder_index > arr.length - 1
	smallest_number = arr[placeholder_index]
	current_index = placeholder_index
	compare_index = current_index + 1
		while arr[compare_index] < arr[current_index]
			smallest_number = arr[compare_index]
		end
		placeholder_index += 1
	end
	return arr
end

begin
	numbers = create_array()
	sorted_numbers = numbers.dup.sort! # will duplicate the array, and then sort
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
