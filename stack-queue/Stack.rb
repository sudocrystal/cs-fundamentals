class Stack
  def initialize(size)              # creates a Stack with a given size
    @size = size                    # the size of the stack
    @store = Array.new(@size)       # new array of the given size
    @top = -1                       # the position of the top of the stack (value is currently nil)
  end

  def pop
    if empty?                       # if the Stack is empty, the pop method returns nil
      nil
    else
      popped = @store[@top]         # the element at position -1 (or current value of @top)
      @store[@top] = nil            # the element at the top of the stack is now nil
      @top = @top.pred #@top--      # the top element changes to the one before/below the popped one
      popped                        # return the popped element
    end
  end

  def push(element)
    if full? or element.nil?        # if the Stack is full or you're not adding anything to it, returns nil
      nil
    else
      @top = @top.succ              # the top element is now one index greater than before
      @store[@top] = element        # add the element at that new index
      self                          # returns the Stack instance
    end
  end

  def size                         # returns the size of the Stack
    @size
  end

  def look                         # returns the element at the top of the stack
    @store[@top]
  end

  private

  def full?                        # the Stack is full if the top element occupies the last index of the array
    @top == (@size - 1)
  end

  def empty?                       # the Stack is empty if the index is not >= 0
    @top == -1
  end
end
