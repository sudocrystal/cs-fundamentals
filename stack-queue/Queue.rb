#
# PART II: Commenting RubyMonk's Code
# Logan McDonald, Cohort 4
#

# Queue class 
class Queue
	# Initialize the class with size
  def initialize(size)
  	# Save the size initialization with an instance variable
    @size = size
    # Store a new array with size 
    @store = Array.new(@size)
    # Save a head and tail instance variable with -1 and 0 respectively
    @head, @tail = -1, 0
  end

  # Dequeue method that removes things from the queue
  def dequeue
  	# If the queue has nothing in it, return nil
    if empty?
      nil
    # Otherwise do these things
    else
    	# Assign the tail variable to the tail plus one thing
      @tail = @tail.succ
      # Save the last element of the array to 'dequeued', a local variable
      dequeued = @store[@head]
      # Add nil to the beginning of array
      @store.unshift(nil)
      # Take the last element off 
      @store.pop
      # Return dequeued, the last element of the array
      dequeued
    end
  end
  
  # Method enqueue, with 'element' as a parameter 
  def enqueue(element)
  	# if it's full (method defined lower) or the element added is nil, return nil
    if full? or element.nil?
      nil
    # Otherwise do this
    else
    	# Set the tail equal to the tail minus one
      @tail = @tail.pred
      # Set the @tail to element from the nil
      @store[@tail] = element
      # Return self, the queue instance
      self 
    end
  end
  
  # Size method that returns the static size from above
  def size
    @size
  end
  
  private
  
  # private method that checks if @head is still the last element of the array and @tail is the first element of the array, basically asking if the queue has non-nil elements/ is empty
  def empty?
    @head == -1 and @tail == 0
  end

  # Private method that checks if the stack has nil elements
  def full?
  	# If the queue is full, the absolute value of the tail (which is negative) is equal to the size of the array
    @tail.abs == (@size)
  end
end
