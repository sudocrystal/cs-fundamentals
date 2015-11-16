# defines a class, Queue
class Queue
  # initialize method takes one argument, size; creates new Queue instance that contains an array, @store, with size number of elements
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    # @head is the index of the last element in the queue, @tail is the index of the first element in the queue
    @head, @tail = -1, 0
  end

  # dequeue method removes an item from the front of the queue, if the queue is not empty
  def dequeue
    # if queue is empty, cannot remove anything
    if empty?
      nil
    else
      # +1 added to @tail because the queue is going to be one item shorter now
      @tail = @tail.succ
      # dequeued is set equal to the item at the front of the queue
      dequeued = @store[@head]
      # adds a nil to the "front" of @store (but this is actually the back of the queue)
      @store.unshift(nil)
      # removes the last item from @store (first item in the queue)
      @store.pop
      # returns the item removed from the queue
      dequeued
    end
  end

  # enqueue method adds an item to the end of the queue, if the queue is not full
  def enqueue(element)
    # if queue is full or the element you're trying to add = nil, item cannot be added to the queue
    if full? or element.nil?
      nil
    else
      # 1 subtracted from @tail because the queue is going to be one item longer now
      @tail = @tail.pred
      # last element in the queue is set equal to the element you passed in as an argument
      @store[@tail] = element
      # returns the Queue
      self
    end
  end

  # returns the size of the Queue (number of slots in the array/items that COULD be in the queue, NOT number of items in the Queue)
  def size
    @size
  end

  # methods below are only available to other Queue methods, not outside objects
  private

  # checks to see if the Queue is empty
  def empty?
    # @head and @tail are equal to what they were when the Queue was created
    @head == -1 and @tail == 0
  end

  # checks to see if the Queue is full
  def full?
    # absolute value of @tail is equal to the number of slots in the queue (@size)
    @tail.abs == (@size)
  end
end
