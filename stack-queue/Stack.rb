require 'pry'

# this is the Stack class
class Stack
# on initialization, a size parameter must be passed in.
  def initialize(size)
# 'size' is made an instance variable so @store can use it throughout the class.
    @size = size
    @store = Array.new(@size)
# The last element will be at index -1. Since it's a stack, the last one on is
# the first one off, so the top of a stack starts at -1
    @top = -1
  end

  def pop
# If the Stack is empty, return nil
    if empty?
      nil
# If it's not empty, take the @top element from the stack and return it.
    else
      popped = @store[@top]
      # why is the top element in @store assigned to nil???
      @store[@top] = nil
      # @top equals @top - 1 (-2). Why do we want this??
      @top = @top.pred #@top--
      popped
    end
  end

# Here, we are pushing elements into the array, starting at the front.
  def push(element)
# If the array is too capacity, or if we try to push in nil, return nil.
    if full? or element.nil?
      nil
# Otherwise, put the element in the array.
    else
      # why do we want @top to be @top + 1?
      @top = @top.succ
      # The element is the next item in the array. I guess if we keep taking the
      # element at index -1, it will be nil. I used pry to investigate:
      # @store=[3, 2, 6, 5, nil, nil]
      # The positions will be occupied by nil if we don't have an element there.
      @store[@top] = element
      # The instance of push will be returned??
      self
    end
  end

# Why do we need this if we already have it initialized? I think it works without it.
  def size
    @size
  end

# Checks the top of the stack (the last element that isn't nil)
  def look
    @store[@top]
  end

  private # Can't find these out from the terminal...

  def full?
# If @top is equal to the size of the array - 1, return true, otherwise false.
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end
