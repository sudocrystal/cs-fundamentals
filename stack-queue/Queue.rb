# defines class Queue
class Queue
# initialize method sets four instance variables each time a new Queue object is created.
  def initialize(size)
# @size is set equal to the size parameter passed in upon instantiation
    @size = size
# @store is set equal to a new array that contains @size number of elements (each element is equal to nil).
    @store = Array.new(@size)
# @head is set equal to -1 and @tail is set equal to 0.  @head keeps track of the rightmost element of the array (it is always equal to -1).  @tail keeps track of the leftmost assigned value in the array.  The leftmost assigned value is the most recent value assigned in the array, so it will be the last on deck to be removed at any given time.  Each time an element is removed, @tail will be incremented by 1, and each time an element is added, it is decremented by 1.
    @head, @tail = -1, 0
  end

# dequeue method returns nil if the @store array is empty (empty? method returns true); if not, it removes the rightmost element of the array, inserts nil into the beginning of the array, and returns the element that was removed.
  def dequeue
    if empty?
  # if @store array is empty, method returns nil and does not change the array.
      nil
    else
  # if @store array is not empty:
    # @tail is incremented by 1.  Because this method will insert nil to the beginning of the array and remove the last element, this represents the new position of the leftmost assigned element of the array after this method is complete.
      @tail = @tail.succ
    # local variable dequeued is set equal to the rightmost element in the @store array.
      dequeued = @store[@head]
    # nil is inserted into the beginning of the array (all elments are moved one position to the right)
      @store.unshift(nil)
    # the leftmost element of the array is removed
      @store.pop
    # dequeued is the return value of the method.  I'm not clear on why this is necessary since the return value of @store.pop is the same as dequeued.
      dequeued
    end
  end

  # enqueue method returns nil if the parameter passed in is nil or the array is full (full? method returns true); otherwise, it assigns the rightmost unassigned value to the parameter passed in.  I'm not clear on why nil is an invalid parameter in the enqueue method but was allowed in the push method for the Stack class.
  def enqueue(element)
  # if nil is passed in as the parameter or the array is full, return nil
    if full? or element.nil?
      nil
    else
  # if array is not full and the parameter is not nil:
    # @tail is decremented by 1.  This represents the rightmost unassigned element of the array, which will be assigned to the parameter passed in once this method is complete.
      @tail = @tail.pred
    # the rightmost unassigned element is assigned to the parameter passed in.
      @store[@tail] = element
    # the return value of this method is the instance of Queue upon which this method has been called.
      self
    end
  end

  # returns the size of the array.  This is the max number of elements that can be assigned in the @store array.
  def size
    @size
  end

  private

  # returns true if @head is equal to -1 and @tail is equal to 0; otherwise, returns false.  When this method returns true, it means that all elements of the array are unassigned.  Since @head is always equal to -1, I'm not clear on why the "@head == -1" qualifier is necessary.
  def empty?
    @head == -1 and @tail == 0
  end

  # returns true if the absolute value of @tail is equal to the array size (the max number of elements that can be assigned); otherwise, returns false.  When this method returns true, it means that all elements of the array have been assigned.
  def full?
    @tail.abs == (@size)
  end
end
