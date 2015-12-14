# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
	array = []
	rand_size = rand(10) + 1
	(0..rand_size).each do
		array.push( rand(1000) )
	end
	return array
end

# To do: write insertion sort
# takes first unsorted number and compares it with the number before it,
# to see if it's smaller than that number. If it is smaller, it'll swap spots,
# then move on to check if it's smaller than the number in front of it until it
# finds a number it's bigger than.
def insertion_sort(arr)
  1.upto(arr.length - 1) do |i|
    value = arr[i]
    j = i - 1
    while j >= 0 and arr[j] > value
      arr[j+1] = arr[j]
      j -= 1
    end
    arr[j+1] = value
  end
  return arr
end

# to do: write selection sort
# goes through entire array to find lowest number. then it swops that number
# with the next unsorted number. then it moves on to next number.
def selection_sort(arr)
  count = 0

  while count < arr.length
    min_num = Float::INFINITY

    # find smallest number in array
    arr[count..arr.length].each do |num|
      if num < min_num
        min_num = num
      end
    end

    # set item in first index to smallest number, then set the old index for
    # the smallest number equal to the item that was in the first index
    min_index = arr.find_index(min_num)
    first_num = arr[count]
    arr[count] = min_num
    arr[min_index] = first_num

    count += 1
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
