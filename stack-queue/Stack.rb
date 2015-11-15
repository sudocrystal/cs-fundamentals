require 'pry'
class Stack
  # a method to initialize a new instance of Stack with @size, @store, and @top attributes
  def initialize(size)
    # an instance variable that gets set to the value of the passed in size parameter
    @size = size
    # an instance variable that is a new array, the length of which is set to equal the size instance variable
    @store = Array.new(@size)
    # an instance variable set to the value of -1, meant to represent the end of the @store array
    @top = -1
  end

  # a method called pop that removes the last element in the @store array
  def pop
    # calls the empty? private method and if the method is true, returns nil and doesn't remove an element from the array, otherwise it moves onto else
    if empty?
      nil
    else
      # a variable that is set equal the value at @top index in the @store array index
      popped = @store[@top]
      # the value that is @top index is set equal nil
      @store[@top] = nil
      # resets @top by subtracting one from whatever the value is of @top
      @top = @top.pred #@top--
      # returns the value of the element that was removed from the end of the array
      popped
    end
  end

  # a method called push that adds an element to the front of the @store array, passed in as a parameter
  def push(element)
    # if the full? private method returns true or element equals nil, nil gets returned and nothing gets pushed to @store array, otherwise it moves onto else
    if full? or element.nil?
      nil
    else
      # resets @top by adding one to whatever the value is of @top
      @top = @top.succ
      # the value that is at @top index in the @store array is set to whatever is passed in at element
      @store[@top] = element
      # returns the updated Stack instance, with element being added to the front of the array
      self
    end
  end

  # returns the value of @size (how many elements are in the @store array) that was passed in as an argument at initialize
  def size
    @size
  end

  # shows the value of the element assigned to @top index; it does not remove it from the array
  def look
    @store[@top]
  end

  # methods below here can only be called without an explicit receiver (i.e., they cannot be called on an instance of Stack)
  private

  # returns true if @top and @size minus 1 are equal; indicates the array is full and nothing can be added to it
  def full?
    @top == (@size - 1)
  end

  # returns true if @top equals -1; indicates the array is empty and nothing can be removed from it
  def empty?
    @top == -1
  end
end
