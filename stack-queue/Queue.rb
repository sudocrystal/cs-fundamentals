class Queue
  def initialize(size)
    # initializes a Stack object with the size attribute given in the instantiation
    @size = size
    # creates an array that holds nil * size times
    @store = Array.new(@size)
    # head of queue is the front, tail is the end of the queue
    @head, @tail = -1, 0
  end

  def dequeue
    # returns nil if queue is empty
    if empty?
      nil
    else
      # increments tail, which ... ?
      @tail = @tail.succ
      # temp variable storing the value that is being dequeued
      dequeued = @store[@head]
      # prepends nil to the front of the queue
      @store.unshift(nil)
      # pops the last value from the queue in order to maintain the size
      @store.pop
      # returns the temp variable
      dequeued
    end
  end

  def enqueue(element)
    # returns nil if queue is full or element is nil
    if full? or element.nil?
      nil
    else
      # subtracts one from @tail
      @tail = @tail.pred
      # sets the queue's @tail spot to the element
      @store[@tail] = element
      # returns self, or the Stack object that enqueue was invoked on
      self
    end
  end

  def size
    # returns the size of the queue
    @size
  end

  private

  def empty?
    # queue is empty if the @head and @tail are how they were when the queue was first instantiated
    @head == -1 and @tail == 0
  end

  def full?
    # full if the absolute value of tail is the size (or -@tail == @size)
    @tail.abs == (@size)
  end
end
