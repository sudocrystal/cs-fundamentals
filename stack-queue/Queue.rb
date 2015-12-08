class Queue
  #indicates that the parameter 'size' must be included to create new object of Queue class

  def initialize(size)
    #@size stores the value indicated in parameter
    @size = size
    #@store creates new array with size indicated in parameter and stored in @size
    @store = Array.new(@size)
    #@head is indicating the array location of the last element in the array which starts with no value -> nil
    #@tail is indicating that the tail is located at the first element in an array -> 0
    @head, @tail = -1, 0
  end

  def dequeue
    #if there is nothing in the Queue, return nil
    if empty?
      nil
    else
      #increase the integer @tail by +1
      @tail = @tail.succ
      #set variable 'dequeued' to value located at the current array index at @store[@head]
      dequeued = @store[@head]
      #starting at begining of array- shift all elements up an index, and put 'nil' at first index in array
      @store.unshift(nil)
      #removes last element in array
      @store.pop
      #returns element defined in 'dequeued' variable
      dequeued
    end
  end

  def enqueue(element)
    #if full? method returns true, or element in parameter is nil, return nil
    if full? or element.nil?
      nil
    else
      #decreases @tail integer value by -1
      @tail = @tail.pred
      #places element value into index location of @tail
      @store[@tail] = element
      #returns array
      self
    end
  end

  def size
    #returns value of @size
    @size
  end

  private

  def empty?
    #returns true if @head and @tail are equal to their starting values.  Indicates that there are no elements currently in array
    @head == -1 and @tail == 0
  end

  def full?
    #returns true if the absolute value of @tail is equal to value of @size
    @tail.abs == (@size)
  end
end
