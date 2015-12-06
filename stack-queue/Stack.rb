class Stack
  #creates a new instance of stack
  def initialize(size)
    #instance variable that sets the length of the stack
    @size = size
    #instance variable that is created of length @size with nil in each place
    @store = Array.new(@size)
      #sets instance variable @top to -1 which corresponds to the index at the top of the stack array
    @top = -1
  end

  #removes the last element that was added to the stack
  def pop
    #if the stack is already empty do nothing
    if empty?
      nil
    else
      #set popped equal to the element at index @top, which isthe top of the stack
      popped = @store[@top]
      #set the value at the top of the stack to nil
      @store[@top] = nil
      # subtract 1 from the value of @top
      @top = @top.pred #@top--
      #returns the value that was popped
      popped
    end
  end

  #adds element to the top of the stack
  def push(element)
    #if the stack is already full or the element is nil, do nothing
    if full? or element.nil?
      nil
    else
      #Add 1 to the value of @top
      @top = @top.succ
      #sets the value at the top of the stack to element
      @store[@top] = element
      #returns it self
      self
    end
  end

  #returns the size of the queue as defined in initialize
  def size
    @size
  end
  #returns the value at the top of the stack
  def look
    @store[@top]
  end

  private
  #if @top is equal to @size - 1, then the stack is full.
  def full?
    @top == (@size - 1)
  end
  #if @top is -1 the stack is empty
  def empty?
    @top == -1
  end
end
