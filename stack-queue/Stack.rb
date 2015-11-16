# Class Stack contains methods that can be used by Stack instances
class Stack

  # instantiates a new instance of the Stack class with a data storage amount of var size
  def initialize(size)
    # sets the data storage amount to the instance var @size so that it can be accessed by every method in this instance of Stack
    @size = size
    # creates a new array instance with an array size equal to the Stack data storage amount
    @store = Array.new(@size)
    # sets instance var @top to the int -1, to indicate that for Stack class instances are last in first out data structures
    @top = -1
  # end the initialize method
  end

  # method that removes and returns the most recent item added to the Stack
  def pop
    # begining of if statement
    # if the method empty? returns true
    if empty?
      #return nil
      nil
    # if the method empty? returns false
    else
      # assign to the the local var popped the value in the array @store
      # that is is the array position of the value of @top
      popped = @store[@top]
      # assign the value nil to the positon of the value of @top in the array @store
      @store[@top] = nil
      # subtract one from the value of the instance var @top
      # and assign the value back to the instance var @top
      @top = @top.pred
      # return the value of the local var popped
      popped
    # end if/else statement
    end
  # end pop method
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end
