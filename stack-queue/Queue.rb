class Queue
  #creates a new instance of queue
  def initialize(size)
    #instance variable that sets the length of the queue
    @size = size
    #instance variable that is created of length @size with nil in each place
    @store = Array.new(@size)
    #sets instance variable @head to -1 which corresponds to the index at the top of the array, and @tail to 0 which corresponds to the index the back of the array.
    @head, @tail = -1, 0
  end

#removes the element from the front of the queue
  def dequeue
    #if the queue is already empty, does nothing
    if empty?
      nil

    else
      #adds 1 to @tail
      @tail = @tail.succ
      #sets a local variable to the value at the top of the array
      dequeued = @store[@head]
      #adds nil to the tail of the array
      @store.unshift(nil)
      #takes off the element at the top of the array
      @store.pop
      #returns the value that was at the top of the array that has just been removed
      dequeued
    end
  end

  #adds an element to the rear of the queue
  def enqueue(element)
    #if the array is already at the max length @size, or if the elemennt we are trying to add is nil, do nothing
    if full? or element.nil?
      nil
    else
      #subtracts 1 from @tail
      @tail = @tail.pred
      #sets the value of the element at the tail of the array to the value of element.
      @store[@tail] = element
      #returns it self
      self
    end
  end

  #returns the size of the queue as defined in initialize
  def size
    @size
  end

  private

  #the array is empty when @head is at -1 and @tail is at 0
  def empty?
    @head == -1 and @tail == 0
  end

  #if the absolute value of @tail is equal to the size, then the queue is full.
  def full?
    @tail.abs == (@size)
  end
end
