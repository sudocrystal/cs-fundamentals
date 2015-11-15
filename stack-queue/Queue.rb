# Class Queue contains methods that can be used by Queue instances
class Queue
  # instantiates a new instance of the Queue class with a data storage amount of var size
  def initialize(size)
    # sets the data storage amount to the instance var @size so that it can be accessed by every method in this instance of Queue
    @size = size
    # creates a new array instace with an array size equal to the Queue data storage amount
    # sets the new array instance to the instance var @store
    @store = Array.new(@size)
    # sets instace vars @head and @tail to the ints -1 and 0 respectivy, to indicate that for Queue class instances are first in first out data structures
    @head, @tail = -1, 0
  end

  # method that removes and returns the first item in the Queue
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

  # method that adds a new item to the Queue
  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  # method that returns the size of the Queue
  def size
    @size
  end

  private

  # method that returns true if Queue contains no data and false if it does
  def empty?
    @head == -1 and @tail == 0
  end

  # method that returns true if Queue is full of data, and false if it has open spots
  def full?
    @tail.abs == (@size)
  end
end
