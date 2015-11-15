class Queue
  # a method to initialize a new instance of Queue with @size, @store, @head and @top attributes
  def initialize(size)
    # an instance variable that gets set to the value of the passed in size parameter
    @size = size
    # an instance variable that is a new array, the length of which is set to equal the size instance variable
    @store = Array.new(@size)
    # instance variables set to the value of -1 or 0 respectively; meant to represent the beginning and end of the @store array
    @head, @tail = -1, 0
  end

  # a method called dequeue that removes the first element in the @store array
  def dequeue
    # calls the empty? private method and if the method is true, returns nil and doesn't remove an element from the array, otherwise it moves onto else
    if empty?
      nil
    else
      # adds one to whatever the value is of @tail
      @tail = @tail.succ

      # a variable that is set equal to the value at @head index in the @store array
      dequeued = @store[@head]
      # adds (prepends) nil to the front of the @store array
      @store.unshift(nil)
      # removes the last element of the @store array and returns it
      @store.pop
      # returns the value of the element at index @head in @store array that was removed from the end of the array
      dequeued
    end
  end

  # a method called enqueue that adds an element to the front of the @store array, passed in as a parameter
  def enqueue(element)
    # if the full? private method returns true or element equals nil, nil gets returned and nothing gets pushed to @store array, otherwise it moves onto else
    if full? or element.nil?
      nil
    else
      # resets @tail by subtracting one from whatever the value is of @tail
      @tail = @tail.pred
      # the value that is at @tail index in the @store array is set to whatever is passed in at element
      @store[@tail] = element
      # returns the updated Queue instance, with element being added to the front of the @store array
      self
    end
  end

  # returns the value of @size (how many elements are in the @store array) that was passed in as an argument at initialize
  def size
    @size
  end

  # methods below here can only be called without an explicit receiver (i.e., they cannot be called on an instance of Queue)
  private

  # returns true if @head is equal to -1 and @tail is equal to 0, indicates the array is empty and nothing can be removed from it
  def empty?
    @head == -1 and @tail == 0
  end

  # returns true if the absolute value of @tail equals the value of @size; indicates the array is full and nothing can be added to it
  def full?
    @tail.abs == (@size)
  end
end
