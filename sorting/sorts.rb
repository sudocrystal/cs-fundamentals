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
#progress through the array building a sorted array behind you.
#In this code, i is used to mark the index of the element you are looking at to determine where it belongs in the sorted array behind it.
#The variable j is used to iterate through the sorted array until you reach the spot where arr[i] should be inserted.
#Compare arr[j] with the element previous to it. If it is less, swap them. If it isn't, don't.

def insertion_sort(arr)
	i = 1
	while i <= arr.length - 1
		j = i
		while j >= 1
				if arr[j] < arr[j-1]
					arr[j], arr[j-1] = arr[j-1], arr[j]
					j -= 1
				else arr[j] >= arr[j-1]
					j = 0     #did this to exit the outer loop without having to
					          # continue iterating.
				end
		end
		i += 1
	end
	return arr
=======
def insertion_sort(arr)
  return arr
>>>>>>> upstream/master
end

# TODO: write selection sort
#Look at every element in the array to find the one with the lowest value. In my code, min_index is where that element is located.
#Swap the element at the first index with that minimum element.
#Repeat for the subarray starting at the second index and keep repeating the process until you reach the last index.
#In this code, i is used to mark the index that you are trying to fill with the minimum element. j is used to iterate through the array to find that element.

def selection_sort(arr)

	i = 0
	while i <= arr.length - 1
		j = i
		min_index = i
		while j <= arr.length - 1
				if arr[j] <= arr[min_index]
					min_index = j
				end
				j += 1
		end
		arr[i], arr[min_index] = arr[min_index], arr[i]
		i += 1
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
