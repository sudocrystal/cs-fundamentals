require 'pry'

# personal notes:
# from Ruby doc:
# .pred returns the Integer equal to int -1
# -1.pred => =-2

# .succ returns the Integer equal to +1
# 1.succ => 2


# .unshift: prepends objects to the front of self, moving other elements upwards.
# a = ["b", "c", "d", "e"]
#a.unshift("a")=> ["a", "b", "c", "d"]

class Queue
  # initialize a new Queue object with a certain size/# of slots
  def initialize(size)
    # will store the size of the Queue object at any instance
    @size = size
    # store will store the size of the new Queue object you have made in an Array
    @store = Array.new(@size)
    # head is the first to come out of the queue when called, tail will be last
    @head, @tail = -1, 0
  end

# the dequeue method returns the first value passed into the new Queue object
  def dequeue
    # if the queue object is empty, return nil
    if empty?
      nil
    else
      # .succ will increment @tail by -1 each time it is called
      # tail will track how many total items remain the the array that are not nil
      @tail = @tail.succ
      # ??
      dequeued = @store[@head]

      # the .unshift method will take the 1st value passed into the Queue object (which @head tracks)
      # the .pop method will then pop this value out
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end

  def enqueue(element)
    # if the Queue object is full (is = to the size you set when you created the new object), return nil
    if full? or element.nil?
      nil
    else
      # .pred will decrement @tail by 1 every time it is called
      @tail = @tail.pred
      # ??
      @store[@tail] = element
      # will return the Queue object with the new element added when called
      self
    end
  end

  # defining the size method
  def size
    @size
  end

  private

# if head and tail the same values as defined when a Queue object is intialized, then the Queue object is empty
  def empty?
    @head == -1 and @tail == 0
  end

# .abs returns the absolute value of the number. If @tail is equal to @size, the array is full.
  def full?
    @tail.abs == (@size)
  end
end
