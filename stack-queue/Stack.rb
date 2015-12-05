class Stack
  def initialize(size)
    # initializes a Stack object with the size attribute given in the instantiation
    @size = size
    # creates an array that holds nil * size times
    @store = Array.new(@size)
    # keeps track of where the top of the stack is. Empty stack has @top of -1
    @top = -1
  end

  def pop
    # returns nil if the stack is empty
    if empty?
      nil
    else
      # temp variable holding what is going to be popped
      popped = @store[@top]
      # stores nil in the top of the stack, which "pops" it off
      @store[@top] = nil
      # decrements the top instance variable
      @top = @top.pred #@top--
      # returns the value that was popped
      popped
    end
  end

  def push(element)
    # returns nil if the stack is full or the element is nil
    if full? or element.nil?
      nil
    else
      # increments the top variable
      @top = @top.succ
      # stores the element in the top of the stack
      @store[@top] = element
      # returns self, or the Stack object that push was invoked on
      self
    end
  end

  def size
    # returns the size of the stack
    @size
  end

  def look
    # returns the value of the top element in the stack
    @store[@top]
  end

  private

  def full?
    # helper method to determine if stack is full. Since the @top starts at -1, the stack is full when it is equal to size - 1
    @top == (@size - 1)
  end

  def empty?
    # helper method to determine if stack is empty, which is when @top is -1
    @top == -1
  end
end
