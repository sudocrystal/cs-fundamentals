
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
	number_compare = 0
  for i in (0..array.length - 1)
    j = i
    done = false
    while ((j > 0) && (! done))
      number_compare = number_compare + 1
      if (array[j] < array[j - 1])
        temporary = array[j - 1]
        array[j - 1] = array[j]
        array[j] = temporary
      else
        done = true
      end
      j = j - 1
    end
  end
	return arr
end

# TODO: write selection sort
def selection_sort(arr)
	for i in (0..arr.length - 2)
		minimum_index = i
		for j in (i + 1..arr.length - 1)
			if arr[j] < arr[minimum_index]
				minimum_index = j
				arr[i], arr[minimum_index] = arr[minimum_index], arr[i]
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
