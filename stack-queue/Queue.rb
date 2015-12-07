class Queue
  def initialize(size) #create new queue with specific size
    @size = size #@size is equal to the size passed in
    @store = Array.new(@size) #@store is a new array of size @size, which represents the queue
    @head, @tail = -1, 0 #The head of the queue is at index -1, the tail of the queue is at index 0
  end

  def dequeue #returns element at head of queue
    if empty? #if there are no non-nil elements in the queue, return nil
      nil
    else
      @tail = @tail.succ #@tail++

      dequeued = @store[@head] #element to dequeue is one at the "head" index
      @store.unshift(nil) #prepends nil to the front of the queue (array), moving all other elements upwards
      @store.pop #removes last element in array (because it is being dequeued)
      dequeued #returns element at head of the queue (array)
    end
  end

  def enqueue(element) #adds element to back of queue
    if full? or element.nil? #if queue is full of non-nil elements, or the element passed in is nil, return nil
      nil
    else
      @tail = @tail.pred #@tail--
      @store[@tail] = element #puts element in array at @tail index
      self #returns array representing the queue
    end
  end

  def size
    @size #returns size of the queue specified at creation
  end

  private #private methods

  def empty? #returns true if @head index is set to -1 and @tail index is set to 0
    @head == -1 and @tail == 0
  end

  def full? #returns true if the absolute value of the @tail index
    #is equal to the size passed in during queue creation.
    #This means that the array is filled with all non-nil elements.
    @tail.abs == (@size)
  end
end
