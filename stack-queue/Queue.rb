class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    #the array is limited to the size
    @head, @tail = -1, 0
    #the head is the last item, and the tail is the first.
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ
      #Incrementing a digit always results in another digit, and incrementing a letter results in another letter of the same case.
      dequeued = @store[@head]
      @store.unshift(nil)
      #unshift will add a new item to the beginning of an array.
      @store.pop
      #The method pop removes the last element in an array and returns it:
      dequeued
    end
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      #Returns the Integer equal to int - 1.  Will return the last item in queue.
      @store[@tail] = element
      #returns the first item
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @head == -1 and @tail == 0
    #will return true or false
  end

  def full?
    @tail.abs == (@size)
    #will return true or false
  end
end
