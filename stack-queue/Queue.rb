require 'pry'

# This is the start of the Queue class
class Queue
# on initialization, a size parameter must be passed in.
  def initialize(size)
# 'size' is made an instance variable so @store can use it throughout the class.
    @size = size
# An array is created, made with enough spaces for the size specified.
    @store = Array.new(@size)
# @head is set to -1 and @tail is set to 0.
    @head, @tail = -1, 0
  end

# This method will take items out of the queued array.
  def dequeue
# If the queue is empty, return nil.
    if empty?
      nil
# Otherwise, return the first element (the one at the first index).
    else
      # @tail is being set to -1 of whatever it was.
      @tail = @tail.succ
# Dequeued is set to the last element in the array.
      dequeued = @store[@head]
# Sticks nil at index 0
      @store.unshift(nil)
# And the last item is popped off.
      @store.pop
# This is the item returned.
      dequeued
    end
  end

# This method is putting elements into the array, starting at the back.
  def enqueue(element)
# If the array is too capacity, or if we try to push in nil, return nil.
    if full? or element.nil?
      nil
# Otherwise, put the element in the array.
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

# Why do we need this if we already have it initialized? I think it works without it.
  def size
    @size
  end

  private

# checks to see if it's empty
  def empty?
    @head == -1 and @tail == 0
  end
  
# checks to see if it's full.
  def full?
    @tail.abs == (@size)
  end
end
