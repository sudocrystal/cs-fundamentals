class Stack

  # Initializes a new array with the passed size
  # Also sets an instance variable for @top to track the top of the stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    # if the stack is empty, return nil
    if empty?
      nil
    # if the stack is not empty:
    else
      # store the value at the top of the stack
      popped = @store[@top]
      # Set the top position to nil
      @store[@top] = nil
      # decrement @top
      @top = @top.pred #@top--
      popped
    end
  end

  def push(element)
    # If the array is already full or if the element being added is nil return nil
    if full? or element.nil?
      nil
    else
    # otherwise: increment @top and add the element to the top of the stack
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  # return the size of the stack
  def size
    @size
  end

  # return the value at the top position of the stack
  def look
    @store[@top]
  end

  private

  # If the stack is full, @top is equal to the size - 1
  def full?
    @top == (@size - 1)
  end

  # if the stack is empty, @top will be equal to -1 
  def empty?
    @top == -1
  end
end
