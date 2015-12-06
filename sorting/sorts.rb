
# create a randomly sized @array (1-10 elements) with random values (0-999)

require 'pry'

	def create_array
		array = []
		rand_size = rand(10) + 1
		(0..rand_size).each do
			array.push( rand(1000) )
		end
		return array
	end

	def set_instances
		@current_i = 0
		@index = 1
	end

	def swap
		temp = @array[@current_i + 1]
		@array[@current_i + 1] = @array[@current_i]
		@array[@current_i] = temp
	end

	def smaller?
		if @array[@current_i + 1] < @array[@current_i]
			return true
		end
	end

	def start?
		if @current_i + 1 == 0
			return true
		end
	end

	def finish?
		if @index == @array.length
			return true
		end
	end

	def set_index
		@current_i = @index - 1
	end

	def check_left
		while !start?
			if smaller?
				swap
				@current_i -= 1
			else
				set_index
				break
			end
		end
		set_index
	end

	def step_forward
		@current_i += 1
		@index += 1
	end


# TODO: write insertion sort
def insertion_sort(array)
	set_instances
	@array = array
	# If the @array length = 1 - it'll return the @array.
	while !finish?
		check_left
		step_forward
	end
	return @array
end


# TODO: write selection sort
def selection_sort(arr)
	smaller = 0
	@array = arr
	@index = 0

	while !finish_selection?
		smaller = @index
		for i in (@index..(@array.length-1))
			if @array[i] < @array[smaller]
				smaller = i
			end
		end
		swap_selection(smaller, @index)
		step_forward_selection #index and current
	end
	return @array
end

def finish_selection?
	if @index == @array.length-1
		return true
	end
end

def swap_selection(smaller, index)
	temp = @array[smaller]
	@array[smaller] = @array[index]
	@array[index] = temp
end

def step_forward_selection
	@index += 1
end


begin
	numbers = create_array()
	sorted_numbers = numbers.dup.sort!
	puts "Generating an @array that's not sorted..."
end while numbers == sorted_numbers

puts "original @array = "
print numbers
puts "\n\n"

puts "after RUBY SORT, @array = "
print sorted_numbers
puts "\n\n"

puts "after INSERTION SORT, @array = "
insertion_numbers = insertion_sort(numbers.dup)
print insertion_numbers
raise "Insertion Sort doesn't sort!" unless insertion_numbers == sorted_numbers
puts "\n\n"

puts "after SELECTION SORT, @array = "
selection_numbers = selection_sort(numbers.dup)
print selection_numbers
raise "Selection Sort doesn't sort!" unless selection_numbers == sorted_numbers
puts "\n\n"


puts "YAY!! I wrote Insertion sort and Selection sort in Ruby!! Aren't I awesome?"
