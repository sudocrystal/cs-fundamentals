def create_array
	array = []
	rand_size = rand(10) + 1
	(0..rand_size).each do
		array.push( rand(1000) )
	end
	return array
end

# TODO: write insertion sort
#Takes first unsorted number and compares it with the value before it. If it is smaller it will swap spots that number and every number before it that it is smaller than until there are no smaller numbers. This continues for every unsorted number.
def insertion_sort(arr)
	n = arr.length
	(1...n).each do |i|
		j = i
		while arr[j] < arr[j-1] #&& j >= 1
			x = arr[j]
			arr[j] = arr[j-1]
			arr[j-1] = x
			j -= 1
			break if j == 0
		end
	end
	return arr
end

# TODO: write selection sort
#Insertion sort goes through the entire array to find the minumum number. It then takes that minumum number and swaps the minimum found with the next unsorted number. It continues through each unsorted number.
#arr = [2, 3, 1]
def selection_sort(arr)
	n = arr.length
	(n - 1).times do |i|
		min = i
		(i...n).each do |num|
			if arr[num] < arr[min]
				min = num
			end
		end
		x = arr[i]
		arr[i] = arr[min]
		arr[min] = x
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
