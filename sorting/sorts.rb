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
  return arr
end

# TODO: write selection sort
def selection_sort(arr)
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
