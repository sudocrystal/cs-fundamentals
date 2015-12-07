
# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
	array = []
	rand_size = rand(10) + 1
	(0..rand_size).each do
		array.push( rand(1000) )
	end
	return array
end

# insertion sort examines each element (in order of index from 0 to n-1 where n is the length of the array), then inserts that element at its appropriate place within the group of sorted elements
# performing a series of element swaps adjusts for the shifting indices during an "insertion"
# TODO: write insertion sort (done)
def insertion_sort(arr)

	1.upto(arr.length - 1) do |n|
		insert_me = arr[n]

		until arr[n - 1] < insert_me || (n - 1) < 0
			arr[n] = arr[n - 1]
			arr[n - 1] = insert_me

			n -= 1
		end
	end

	return arr
end

# selection replaces each element in an array one-by-one (in order of index from 0 to n - 1 where n is the length of the array), by scanning the unsorted elements for the smallest value and performing a swap
# TODO: write selection sort
def selection_sort(arr)

	arr.length.times do |swap_with_me|
		selector = swap_with_me

		swap_with_me.upto(arr.length - 1) do |i|
			if arr[i] < arr[selector]
				selector = i
			end
		end

		smallest = arr[selector]

		arr[selector] = arr[swap_with_me]
		arr[swap_with_me] = smallest
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
