class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size) # create new array to represent quie
    @head, @tail = -1, 0 # head will not change. it's always at last index in array.
    # head will always be first thing removed
  end
  
  def dequeue
    if empty?
      nil # can't remove anything if there's nothing in there
    else
      @tail = @tail.succ # set tail to be the following index in array

      dequeued = @store[@head] # store contents of last item in array
      @store.unshift(nil) # adds nill to the beginning of array
      @store.pop # removes item at last index in array
      dequeued # returns last item of array, which has just been removed
    end
  end
  
  def enqueue(element)
    if full? or element.nil?
      nil # can't add anything if it's full or if the element is nil
    else
      @tail = @tail.pred # set end of queue equal to the previous index in array
      @store[@tail] = element # set the new element to equal that spot in the array
      self # return queue instance
    end
  end
  
  def size
    @size
  end
  
  private # again, methods the devs can access, but not users
  
  def empty?
    @head == -1 and @tail == 0 # these are the numbers we started with, indicating array is empty.
    # Not sure why @head is on here, since it never changes. But tail equaling 0 indicates that the last item
    # has been dequeued (positioned at @store[-1]), and its count has gone down to 0.
  end

  def full?
    @tail.abs == (@size) # need absolute value of tail, since it counts down from -1 as array fills up
  end
end
