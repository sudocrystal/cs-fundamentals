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
def insertion_sort(arr)
<<<<<<< HEAD
	arr.each_with_index do |num, i|
    if i > 0
      while arr[i] < arr[i-1] && i > 0
        arr[i], arr[i-1] = arr[i-1], arr[i]
        i -= 1
      end
  	end
  end
=======
>>>>>>> upstream/master
  return arr
end

# TODO: write selection sort
def selection_sort(arr)
<<<<<<< HEAD
	to_sort = arr.dup
	sorted = []
	until sorted.length == arr.length
		min = to_sort[0]
		to_sort.length.times do |i|
			min = to_sort[i] if to_sort[i] < min
		end
		sorted.push(min)
		to_sort.delete_at(to_sort.index(min))
	end
	arr = sorted
	return arr
=======
  return arr
>>>>>>> upstream/master
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
