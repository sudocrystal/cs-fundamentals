# defines a class, Stack
class Stack
  # initialize method takes one argument, size; creates new Stack instance that contains an array, @store, with size number of elements
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    # @top will be used to refer to the index of the last element in the Stack
    @top = -1
  end

  # pop method - if Stack is not empty, removes one element from the end of the Stack
  def pop
    # if Stack is empty, cannot remove anything
    if empty?
      nil
    else
      # popped set equal to last element in @store array
      popped = @store[@top]
      # sets last element in @store array to nil
      @store[@top] = nil
      # sets @top equal to @top - 1 (so -2 the first time through, then -3, etc.) - there is still an empty slot in @store at index -1, but no actual element there
      @top = @top.pred #@top--
      # returns the element that was removed from @store/popped from Stack
      popped
    end
  end

  # push method - if Stack is not full, adds one element to the end of the Stack
  def push(element)
    # if Stack is full or the element you're trying to add = nil, cannot add anything
    if full? or element.nil?
      nil
    else
      # +1 added to @top because there is one more item in the Stack
      @top = @top.succ
      # new item actually added to @store array
      @store[@top] = element
      # returns Stack
      self
    end
  end

  # returns the size of the Stack (number of slots in the array/items that COULD be in the stack, NOT number of items in the Stack)
  def size
    @size
  end

  # returns the last element in the Stack
  def look
    @store[@top]
  end

  # methods below are only available to other Stack methods, not outside objects
  private

  # checks to see if the Stack is full
  def full?
    # index of the last item in @store is equal to size of the array - 1
    @top == (@size - 1)
  end

  # checks to see if the Stack is empty
  def empty?
    # index of the last item in @store is equal to -1 (what it's equal to when Stack is created)
    @top == -1
  end
end
