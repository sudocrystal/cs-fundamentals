# create a randomly sized array (1-10 elements) with random values (0-999)
require 'pry'
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
# start at the second number, check the number one position before it
# keep moving the number one position to the left until the number to its left
# is smaller than it.  Repeat until you've gone through every element in the array (except the first).
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
def selection_sort(arr)
# start by assuming the first element is the smallest number. Go through each element of the array
# and find the smallest number.  Swap the first element with the smallest number.  Repeat these steps
# starting at the element one index higher than the previous starting element and continue this process
# until all elements have been sorted.
	if arr.length == 1 || arr == []
	else
		starting_index = 0
		until starting_index > (arr.length - 1)
			smallest_index = starting_index
			compare_index = starting_index + 1
			arr[starting_index..(arr.length - 2)].length.times do
				if arr[compare_index] <= arr[smallest_index]
					smallest_index = compare_index
				end
				compare_index += 1
			end
			arr[starting_index], arr[smallest_index] = arr[smallest_index], arr[starting_index]
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
