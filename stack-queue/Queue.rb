class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size) #size and store are the same as for stack
    @head, @tail = -1, 0 #as opposed to stack, in which you push and pop from the same direction, in a queue you push and pop from two different ends. This is why we need a head and tail.
    # head is where you dequeue from (remove)
    #tail is where you enqueue to (add), starting at 0.
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ #from beginning, tail now moves from 0 to 1.

      dequeued = @store[@head] #the element in the head is stored in a local var. so to begin, this is element -1.
      @store.unshift(nil) #unshift puts a nil at the front at the array (0).
      @store.pop #returns the item at the end of the array
      dequeued  #returns the element that was just taken off the end of the array (from the head)
    end
  end

  def enqueue(element)
    if full? or element.nil? #can't add to a full queue or add a nil
      nil
    else
      @tail = @tail.pred #tail gets moved earlier. so from 0 it becomes -1.
      @store[@tail] = element #where the tail now is, a new element is enqueued. So starting from say, 2, it becomes 1.and that's where the new element goes. Last in. Last out.
      self #return the queue. I guess it's interesting that you can change around where the head and tail are, as long as they don't run each other over
    end
  end

  def size
    @size #same as stack- this is an explicit reader
  end

  private

  def empty?
    @head == -1 and @tail == 0 #this is the way it was initialized
  end

  def full?
    @tail.abs == (@size) #when you enqueue, tail gets moved earlier. So when you end up at -10 you are at a point where you can't fit more.
  end
end
