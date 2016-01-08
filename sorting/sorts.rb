<<<<<<< HEAD

require 'pry'
=======
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
  array = []
  rand_size = rand(10) + 1
  (0..rand_size).each do
    array.push(rand(1000))
  end
  return array
end

# TODO: write insertion sort
<<<<<<< HEAD
# insertion sort goes through each element and compares it to
# all previous elements until it gets to its spot in the list
def insertion_sort(arr)

	(1..arr.length - 1).each do |index|
		# starting at index 1, which is the second element in the array, delete_at removes the value from the array
		# and sets it to the variable value
		value = arr.delete_at(index)
		# sets the insertion index to the original index started at
		insertion_index = index
		# removes one from the index as long as the value ahead is greater than the value and not 0
		insertion_index -= 1 while insertion_index > 0 && value < arr[insertion_index - 1]
		# inserts the value back at the proper index
		arr.insert(insertion_index, value)
	end
	return arr
=======
def insertion_sort(arr)
  return arr
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
end

# TODO: write selection sort
#selection sort starts at the beginning and goes through the whole list to find the smallest element
#and them moves it to the proper spot, then goes through the remaining elements again and moves that to the next spot
def selection_sort(arr)
<<<<<<< HEAD

	(0..arr.length-1).each do | position |
		smallest = arr[position]
		smallest_index = position
		((position+1)..(arr.length-1)).each do | index |
				if smallest > arr[index]
					smallest = arr[index]
					smallest_index = index
				end
			end
		arr.delete_at(smallest_index)
		arr.insert(position, smallest)
	end

	return arr
=======
  return arr
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
end

begin
  numbers = create_array
  sorted_numbers = numbers.sort
  puts "Generating an array that's not sorted..."
end while numbers == sorted_numbers

puts "original array = "
print numbers
puts "\n\n"

puts "after RUBY SORT, array = "
print sorted_numbers
puts "\n\n"

<<<<<<< HEAD
# puts "after INSERTION SORT, array = "
# insertion_numbers = insertion_sort(numbers.dup)
# print insertion_numbers
# raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers
# puts "\n\n"
=======
puts "after INSERTION SORT, array = "
insertion_numbers = insertion_sort(numbers.dup)
print insertion_numbers
puts "\n\n"
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701

puts "after SELECTION SORT, array = "
selection_numbers = selection_sort(numbers.dup)
print selection_numbers
puts "\n\n"
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
