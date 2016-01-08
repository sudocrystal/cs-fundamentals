# create a randomly sized array (1-10 elements) with random values (0-999)
def create_array
  array = []
  rand_size = rand(10) + 1
  (0..rand_size).each do
    array.push( rand(1000) )
    array.push(rand(1000))
  end
  return array
end

# TODO: write insertion sort 
def insertion_sort(arr)
  # Goes through and examines each element of the array and compares it to the next element

  for index in 1...arr.length

    num_key = arr[index]
    number = index - 1
    while number >= 0 && arr[number] > num_key
      arr[number+1] = arr[number]
      number = number - 1
    end
    arr[number+1] = num_key
  end 

# TODO: write insertion sort
def insertion_sort(arr)
  return arr
end

# TODO: write selection sort
def selection_sort(arr)
<<<<<<< HEAD
  # Finds the small element and puts it at the beginning
  new_arr = []

  while arr.length != 0 
    new_arr.push(arr.min)
    arr.delete(arr.min)
  end

  arr = new_arr

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

puts "\n\n"
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers

puts "after SELECTION SORT, array = "
selection_numbers = selection_sort(numbers.dup)
print selection_numbers

raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers
puts "\n\n"


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
puts "\n\n"
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers
