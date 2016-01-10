# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
  array = []
  rand_size = rand(10) + 1
  (0..rand_size).each do
    array.push(rand(1000))
  end
  return array
end

# Checks the next unsorted item against the sorted items and puts it in the correct place in the array of sorted items
def insertion_sort(arr)
  index = 1
  while index != arr.length
    check = index - 1
    while true
      if arr[index] > arr[check]
        number = arr[index]
        arr.delete(arr[index])
        arr.insert(check + 1, number)
        break
      elsif check == 0
        number = arr[index]
        arr.delete(arr[index])
        arr.insert(check, number)
        break
      else
        check -= 1
      end
    end
      index += 1
  end
	return arr
def insertion_sort(arr)
  return arr
end

# TODO: write selection sort
#Starting with the first element in the array, scan the rest of the array for the minimum element, then place it
#at the beginning of the array, in sorted order.
def selection_sort(arr)
	index = 0
	while index != arr.length
		check = index
		min = nil
		while check != arr.length
			if min.nil? || arr[check] < min
				min = arr[check]
			end
			check += 1
		end
		arr.delete(min)
		arr.insert(index, min)
		index += 1
	end
	return arr
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

puts "after INSERTION SORT, array = "
insertion_numbers = insertion_sort(numbers.dup)
print insertion_numbers
puts "\n\n"
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers

puts "after SELECTION SORT, array = "
selection_numbers = selection_sort(numbers.dup)
print selection_numbers
puts "\n\n"
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
