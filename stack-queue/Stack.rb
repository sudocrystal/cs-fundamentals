class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size) # create a new array of designated length
    @top = -1 # sets top to equal -1, not as in the last thing in array, but as in the number preceeding 0,
    # since there isn't anything in the stack yet for it to equal
  end
  
  def pop
    if empty? # can't take anything out of the stack if there's nothing in it
      nil
    else
      popped = @store[@top] # set variable to equal the last thing in array/top of stack
      @store[@top] = nil # set the last thing in array/top of stack equal to nil
      @top = @top.pred # set the top equal to the thing before it
      popped # returns the item that used to be the last thing in array/top of stack
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil # don't do anything if the stack is alredy full or if the element is nil
    else
      @top = @top.succ # set top of stack equal to the succeeding index in the array
      @store[@top] = element # set that top of stack equal to the element
      self # return the stack instance of Stack class
    end
  end
  
  def size
    @size # also could do @store.length I think
  end
  
  def look
    @store[@top] # returns what's at the top of the stack
  end
  
  # methods only the developers can access, not users
  private
  
  def full?
    @top == (@size - 1) # need to subtract 1 since the index of array begins at 0, vs size begins at 1
  end
  
  def empty?
    @top == -1 # empty if the count is back below 0, which would be the first thing in the stack
  end
end
