class Stack
  def initialize(size)
    @size = size #storing the size of the stack
    @store = Array.new(@size) #creating a new "stack" using an array with nil items filling the array to @size
    @top = -1 #array index of the top of the stack
  end

  def pop #get the element on top of the stack
    if empty? #if there is nothing in the stack, return nil
      nil
    else
      popped = @store[@top] #popped element is the one in the array at the "top" index
      @store[@top] = nil #changing the element in the array at "top" to nil, since it's now been popped
      @top = @top.pred #@top--
      popped #return popped element
    end
  end

  def push(element) #add element to top of stack
    if full? or element.nil? #check if array is full of non-nil elements, or if the element passed in is nil
      nil
    else
      @top = @top.succ #@top++
      @store[@top] = element #changing element in the array at top index to element that was passed in
      self #returns entire stack (the array in its entirety)
    end
  end

  def size
    @size #size of stack, number of elements in array
  end

  def look
    @store[@top] #returns the element at the "top" of the stack
  end

  private

  def full?
    @top == (@size - 1) #returns true if the top of the stack is the same as the size - 1 (since arrays start indexing at 0)
  end

  def empty?
    @top == -1 #returns true if the top of the stack is -1, which means there are no non-nil elements in the array
  end
end
