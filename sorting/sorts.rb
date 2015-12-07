
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
	# Insertion sort takes the next thing and sorts it
	final = [arr[0]]
	arr.delete_at(0)
	# main code
	for i in arr
			final_index = 0
			while final_index < final.length
					if i <= final[final_index]
							final.insert(final_index,i)
							break
					elsif final_index == final.length-1
							final.insert(final_index+1,i)
							break
					end
				final_index+=1
		end
end
# output
final
	return arr
end

# TODO: write selection sort
def selection_sort(arr)
	# How does selection sort work?
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
