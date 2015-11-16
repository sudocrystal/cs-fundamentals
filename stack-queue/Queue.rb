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
  # end the initialize method
  end

  # method that removes and returns the first item in the Queue
  def dequeue
    # begining of if statement
    # if the method empty? returns true
    if empty?
      #return nil
      nil
    # if the method empty? returns false
    else
      # take the value of the variable @tail and add one to it
      # assign this new value back to the var @tail
      @tail = @tail.succ
      # assign the the local var dequeued the value in the array @store
      # that is is the array position of the value of @head
      dequeued = @store[@head]
      # adds nil to the front of the @store array
      # and moves the other elements up the array
      @store.unshift(nil)
      # removes the last element from the @store array
      @store.pop
      # returns the value assigned to the local var dequeued
      dequeued
    # end the if/else statement
    end
  # end the dequeue method
  end

  # method that adds a new item from the variable element to the Queue
  def enqueue(element)
    # beginnig of if statement
    # if the method full? returns true or the value of the local var element is nil
    if full? or element.nil?
      # return nil
      nil
    # if the method full? returns false or the value of the local var element is not nil
    else
      # subtract one from the value of the instance var @tail
      # and assign the value back to the instance var @tail
      @tail = @tail.pred
      # assign the value of the local var element
      # to the position in the array @store at the value of @tail
      @store[@tail] = element
      # return the value self
      self
    # end the if/else statement
    end
  # end the enqueue method  
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
