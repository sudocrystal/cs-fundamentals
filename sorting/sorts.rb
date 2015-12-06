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
# starts at 2nd # and checks to see if it's less than the first #, if it is, it swaps them
def insertion_sort(array)
  # setting an array called final to [whatever is at the first position of the array]; an array of length 1
  final = [array[0]]
  # deleting the first index of the array so that it doesn't get considered in the while loop, since it is already in final array
  array.delete_at(0)
  # iterating through the array
  array.each do |i|
    # setting a value of 0 to a variable called final_index
    final_index = 0
    # while final_index value is less than the length of final array
    while final_index < final.length
        # if i is less than or equal to final[0]
        if i <= final[final_index]
            # then insert i into final array at position indicated by final_index value (i.e., i swaps positions with the value at the index indicated by final_index)
            final.insert(final_index, i)
            # breaks the loop when if returns true
            break
        # else if final_index equals the length of final - 1
        elsif final_index == final.length - 1
            # then insert i into final array at position indicated by final_index value plus 1 (i.e, i gets inserted behind the value at final_index plus 1)
            final.insert(final_index + 1, i)
            # breaks the loop when elsif returns true
            break
        end
        # add 1 to final_index each time it runs through the loop
        final_index += 1
    end
  end
  # puts final array
  final
end

# TODO: write selection sort
  # starts at 1st number and assumes it's the smallest, then goes to the second # and sees if it's smaller than the first,
  # if it is, it swaps them
def selection_sort(array)
  # creates a copy of array and assigns it to a variable called sort
  sort = array.dup
  # creates an empty array called sorted
  sorted = []
  # until the length of sorted array equals the length of the passed in array
  until sorted.length == array.length
    # set min equal to whatever value is at sort index 0
    min = sort[0]
    # iterate through sort array for as many elements sort array has
    sort.length.times do |i|
      # reset min to equal the value of sort at position i only if that value is less than the value at index 0
      min = sort[i] if sort[i] < min
      end
      # push min to the sorted array
      sorted.push(min)
      # deletes the element in sort array where the index equals min
      sort.delete_at(sort.index(min))
  end
    # sets array equal to sorted
    array = sorted
    # returns the sorted array
    return array
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

# def swap(array, current_i, next_i)
#   temp = array[next_i]
#   array[next_i] = array[current_i]
#   array[current_i] = temp
# end
#
# def smaller?(array, current_i, next_i)
#   if array[next_i] < array[current_i]
#     return true
#   end
# end
#
# def start?(next_i)
#   if next_i == 0
#     return true
#   end
# end
#
# def finish?(array, next_i)
#   if next_i = array.length
#     return true
#   end
# end
#
# def set_index(current_i, next_i, index)
#   current_i = index
#   next_i = index + 1
# end
#
# def check_left(array, current_i, next_i, index)
#   while !start?(next_i)
#     if smaller?(array, current_i, next_i)
#       swap(array, current_i, next_i)
#       current_i -= 1
#       next_i -= 1
#     else
#       set_index(current_i, next_i, index)
#       break
#     end
#   end
#   set_index(current_i, next_i, index)
# end
#
# def step_forward(current_i, next_i, index)
#   current_i += 1
#   next_i += 1
#   index += 1
# end
