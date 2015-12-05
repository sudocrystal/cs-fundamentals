class Queue
  def initialize(size)              # creates a Queue of the given size
    @size = size                    # the size of the Queue
    @store = Array.new(@size)       # new array of the given size
    @head, @tail = -1, 0            # the starting positions of the head/tail of the queue
  end

  def dequeue
    if empty?                       # if there is nothing in the Queue, returns nil
      nil
    else
      @tail = @tail.succ            # the index of the tail element increases by 1

      dequeued = @store[@head]      # the dequeued element is the one at the current head of the queue
      @store.unshift(nil)           # add nil to the beginning of the array, the rest of the elements move
      @store.pop                    # removes the final element of the array
      dequeued                      # returns the dequeued element
    end
  end

  def enqueue(element)
    if full? or element.nil?        # if the Queue is full or there is nothing to add, returns nil
      nil
    else
      @tail = @tail.pred            # the index of the tail element decreases by 1
      @store[@tail] = element       # the element is stored at the new tail index
      self                          # returns the Queue instance
    end
  end

  def size                          # returns the size of the Queue
    @size
  end

  private

  def empty?                        # the Queue is empty if the indices of the head and tail are the original values
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)            # the Queue is full if there are enough elements such that the absolute value of the index of the tail is equal to the size of the Queue
  end
end
