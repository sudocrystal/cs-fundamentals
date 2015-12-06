
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
  # compares each element to the elements on their left
  # swaps with the element on the left if the element on the left is higher than the element being sorted
	# this will not work if the array has the same value twice, canNOT figure out how to make that work ugh
	i = 1
	while i < arr.length do
		check = i - 1
		num = arr[i]
		while check >= 0 && num < arr[check] do
			check -= 1
			arr.delete_at(arr.index(num))
			arr.insert(check + 1, num)
		end
		i += 1
	end
	return arr
end


# TODO: write selection sort
# iterates through all non-sorted items, saves the smallest one that it finds
# at end, moves the smallest element found to the end of the array at the left
# this will not work if the array has the same value twice, canNOT figure out how to make that work ugh ugh
def selection_sort(arr)
	i = 0
	while i < arr.length do
		smallest = arr[i]
		n = i + 1
		while n < arr.length do
			if arr[n] < smallest
				smallest = arr[n]
			end
			n += 1
		end
		arr.delete_at(arr.index(smallest))
		arr.insert(i, smallest)
		i += 1
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
