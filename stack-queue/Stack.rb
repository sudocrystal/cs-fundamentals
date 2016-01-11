class Stack
  def initialize(size)
    # @size sets the max size of the stack
    @size = size
    # @store is the array we are creating to be the stack
    @store = Array.new(@size)
    # @top is the marker for the current index that is the top of the stack
    @top = -1
  end
  
  # creating our own definition for removing an item from the back of the stack
  def pop
    # if there's nothing on the stack, you can't take anything off
    if empty?
      nil
    else
      # popped is going to take the thing at the index that is the top of our stack
      popped = @store[@top]
      # now we make that index nil
      @store[@top] = nil
      # now we move the @top marker to the index below, because that is our new top
      @top = @top.pred #@top--
      # explicit return of the item from the top of the stack
      popped
    end
  end
  
  # creating our own method to add an item to the top of the stack
  def push(element)
    # we can't put nil onto the stack, and we can't add to the stack if it is full
    if full? or element.nil?
      nil
    else
      # we need to move our top marker to the new element, which is now the top
      @top = @top.succ
      # and we actually put that element here, in our new top index
      @store[@top] = element
      # explicit return of the stack, i think
      self
    end
  end
  
  # not sure why this isn't an attr_reader, but it's just a method giving us access to the size of the stack
  def size
    @size
  end
  
  # method that returns the item at the current top index of the stack, according to our marker
  def look
    @store[@top]
  end
  
  private
  
  # shows that the stack is full if our top index is equal to the max size of the stack (minus one because arrays start at 0 instead of 1)
  def full?
    @top == (@size - 1)
  end
  
  # shows stack is empty if the top index is -1, which means there isn't one (because 0 is the first item in the array)
  def empty?
    @top == -1
  end
end
