require 'pry'

class Stack

  # initialize a new Queue object with a certain size/# of slots
  def initialize(size)
    # will store the size of the Queue object at any instance
    @size = size
    # store will store the size of the new Queue object you have made in an array
    @store = Array.new(@size)
    # @top serves as a tracker for how many elements are in the array. If top returns 2, there are there 3 values in the array, with
    # with the last value added in index 2.
    #top will increment by 1 every time a value is added to the array and decrement by 1 every time a value is removed from the array.
    @top = -1
  end

  def pop
    # if the array is empty, return nil
    if empty?
      nil
    else
      # the value to be popped will be the last value in the @store array, which is tracked by @top
      popped = @store[@top]
      @store[@top] = nil
      # @top will then decrement by 1 to account for the value being popped out of the array
      @top = @top.pred
      # return the value being removed from the array (the last item added)
      popped
    end
  end

  def push(element)
    #if the element is full, return nil
    if full? or element.nil?
      nil
    else
      # increment @top by 1 to indicate the index value of the new element that has been added
      @top = @top.succ
      # ??
      @store[@top] = element
      # return the Stack object with the new elemente added
      self
    end
  end

  def size
    @size
  end

#return the value of the last item on the Stack without affecting hte stack
  def look
    @store[@top]
  end

  private


# if top and size are the same value, the array is full 
  def full?
    @top == (@size - 1)
  end

# if top is -1, there is nothing in the array
  def empty?
    @top == -1
  end
end
