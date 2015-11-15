class Queue
  # Initializes an array of the passed size
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    # Sets two instance variables - head and tail
    @head, @tail = -1, 0
  end

  def dequeue
    # If Queue is empty: return nil
    if empty?
      nil
    else
      # If the queue is not empty, increment the tail
      @tail = @tail.succ
      # Store the value at the head
      dequeued = @store[@head]
      # Add a nil to the end of queue (the tail)
      @store.unshift(nil)
      # Remove the value at the head
      @store.pop
      # return the value that was removed
      dequeued
    end
  end

  def enqueue(element)
    # If the queue is full or if the element being passed in is nil: return nil
    if full? or element.nil?
      nil
    # Otherwise: decrement @tail, add the element to the tail of the queue
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  # Returns the size of the queue
  def size
    @size
  end

  private

  # If the head is at -1 and the tail is at 0 we know the queue is empty
  def empty?
    @head == -1 and @tail == 0
  end

  #If the tail is equal to the size we know the queue is full
  def full?
    @tail.abs == (@size)
  end
end
