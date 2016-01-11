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

<<<<<<< HEAD
# TODO: insertion sort grabs the next item that is unsorted, and moves it through the srted items until it finds something smaller than it, leaves it in that spot. 
def insertion_sort(arr)
  (0..arr.length-1).each do |i|
      insert_num = arr.delete_at(i)

      insert_index = i
      insert_index -= 1 while insert_index > 0 && insert_num < arr[insert_index - 1]
      arr.insert(insert_index, insert_num)
  end
  arr
=======
# TODO: write insertion sort
def insertion_sort(arr)
  return arr
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
end

# TODO: selection sort goes through each item in the array and checks if it is the next smallest number that has not been sorted yet, then it adds the next smallest nunber to the top of the sorted stack, and continues. 
def selection_sort(arr)
<<<<<<< HEAD
  sorted = []
  (0..arr.length-1).each do |i|
    min = i
    n = i
    while n <= arr.length - 1 do
      min = n if arr[n] < arr[i]
      n += 1
    end
    arr[i], arr[min] = arr[min], arr[i]
  end
=======
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
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
<<<<<<< HEAD
puts insertion_numbers
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers
=======
print insertion_numbers
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
puts "\n\n"
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers

puts "after SELECTION SORT, array = "
selection_numbers = selection_sort(numbers.dup)
<<<<<<< HEAD
puts selection_numbers
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers
=======
print selection_numbers
>>>>>>> dab67fda06d0a272bd575d9f294d4c234c05b701
puts "\n\n"
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
