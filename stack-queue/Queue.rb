# Create class Queue
class Queue
  # Initialize Queue objects with size as a parameter
  def initialize(size)
    # Save size integer as instance variable
    @size = size
    # Create and assign a nilful array of @size length
    @store = Array.new(@size)
    # Assign @head to -1 and @tail to 0, the last element and first element respectively
    @head, @tail = -1, 0
  end

  def dequeue # Take stuff off the queue
    if empty? # If the queue is empty, return nil
      nil
    else
      # Add 1 to tail
      @tail = @tail.succ
      # Save the last element in @store as a local variable
      dequeued = @store[@head]
      # Add nil to the beginning of array
      @store.unshift(nil)
      # Remove last element of array
      @store.pop
      # Return last element of array
      dequeued
    end
  end

  def enqueue(element) # Put stuff in queue
    # If queue is full or element is nil, return nil
    if full? or element.nil?
      nil
    else
      # Subtract 1 from @tail
      @tail = @tail.pred
      # Change @tail from nil to element
      @store[@tail] = element
      # Return self
      self
    end
  end

  def size # Return the static size of the stack
    @size
  end

  # Keep it secret, keep it safe
  private

  # Does the stack have any non-nil elements?
  def empty?
    # Original positioning of @head and @tail
    @head == -1 and @tail == 0
  end

  # Does the stack have any nil elements?
  def full?
    # As things get queued, @tail gets more negative. When ful, the absolute value of @tail is equal to the size 
    @tail.abs == (@size)
  end
end
