class Queue
  # initialize the Queue using new array in size of the argument
  #head = -1 -> since it's the earlier element that added will be used next
  # tail refer to the latest elemant that was added

  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end

# check if the array is empty so it has nothing to return - but nil
# it first store the "head" variable inside "dequeued" - so the value won't get lost. then it uses unshift method
# to shift the entire array to the 'right'. in the end we just 'pop' the head, and return it's value using "dequeued" varibale.
  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end
  # this method is for pushing element into the queue.
  # if the array is full - no more place, return nil. or is the element equal nil- also return nil
  #since we add to the end of the array (it's a queue). first, it moves the tail one step to the left by decrease 1. using pred method
  # then, it save inside the new index of tail with the value of the argument. - so it'll be the last one to
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end
# return the array's size
  def size
    @size
  end

  private
#private methods that check is the array is empty by check if the head is located as the index and the tail is the first
  def empty?
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end
end
