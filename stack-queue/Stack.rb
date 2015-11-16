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

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred #@top--
      popped
    end
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
