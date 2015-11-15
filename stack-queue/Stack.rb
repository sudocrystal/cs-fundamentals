# defines class Stack
class Stack
# initialize method sets three instance variables each time a new Stack object is created.
  def initialize(size)
# @size is set equal to the size parameter passed in upon instantiation
    @size = size
# @store is set equal to a new array that contains @size number of elements (each element is equal to nil).
    @store = Array.new(@size)
# @top is set equal to -1.  This variable will keep track of where the rightmost assigned element is. It starts at -1 because all elements start as nil.  When a value is assigned to the array (via push method), @top will increment by 1 because the rightmost assigned element will be at index 0.
    @top = -1
  end

# pop method returns nil if the @store array is empty (empty? method returns true); if not, it resets the rightmost assigned element to nil and returns its original value.
  def pop
    if empty?
  # if @store array is empty, method returns nil and does not change the array.
      nil
    else
  # if @store array is not empty:
    # local variable popped is set equal to the rightmost assigned element in the @store array.  The purpose is to capture the value of this element before it is reset to nil.
      popped = @store[@top]
    # the rightmost assigned element in the @store array is reset to nil
      @store[@top] = nil
    # @top is decremented by 1 so that it reflects the new position of the rightmost element in the array
      @top = @top.pred
    # the value of popped is the return value of the method
      popped
    end
  end

# push method returns nil if the @store array is full (full? method returns true); if not, it sets the leftmost unassigned element equal to the parameter passed in and returns the Stack object.
  def push(element)
    if full? or element.nil?
  # if @store array is full, method returns nil and does not change the array.
      nil
    else
  # if @store array is not full:
    # @top is incremented by 1.  This is the position in the array at which the parameter passed in will be assigned (the leftmost unassigned element).
      @top = @top.succ
    # the leftmost unassigned element in the array is set equal to the element parameter passed into this method.
      @store[@top] = element
    # the return value of this method is the instance of Stack upon which this method has been called.
      self
    end
  end

  # returns the size of the array.  This is the max number of elements that can be assigned in the @store array.
  def size
    @size
  end

  # returns the rightmost assigned element in the @store array
  def look
    @store[@top]
  end

  private

  # returns true if @top is equal to the index of the rightmost element in the array. Because @top increments with each element assigned to a value, this will be true when the max number of elements have been assigned values. If any elements have not yet been set, this will return false.
  def full?
    @top == (@size - 1)
  end

  # returns true if @top is equal to -1.  This means no elements in the array are assigned.
  def empty?
    @top == -1
  end
end
