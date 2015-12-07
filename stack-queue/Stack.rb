class Stack#this is the class for Stack, containing methods that can be used by Stack instances
  def initialize(size)#instantiates an instance of Stack, requiring a size parameter
    @size = size #instantiates an instance of Stack, requiring a size parameter
    @store = Array.new(@size) # @store is set equal to an array of @size length. Ex, if @size = 3, then @store = [nil, nil, nil]
    @top = -1 #the @top instance variable is set at -1
  end

  def pop #this method removes the last element added to the array and returns it, or returns nil if its empty
    if empty? #runs the following code if empty? is true, when @top is equal to -1
      nil #returns nil
    else #if its not empty, then runs this:
      popped = @store[@top] #popped is set equal to the element at the @top position of @store
      @store[@top] = nil #replaces @store[@top] with nil
      @top = @top.pred #@top becomes its value -1, so if it 2 it becomes 1.
      popped #returns the element that was "popped" off and replaced by nil
    end
  end

  def push(element)
    if full? or element.nil? #if the array is already full of non-nil elements, or if the element is nil, method will return nil
      nil #returns nil
    else
      @top = @top.succ #the @top  instance variable is set equal to itself +1
      @store[@top] = element #replaces the array position of @store[@top] with the element, in place of the previous nil
      self #returns the instance of stack, showing the new array
    end
  end

  def size #this method returns the value of @size
    @size #this returns the value of @size
  end

  def look #this method will show the last element, that isn't nil, unless the array is empty then it will be nil
    @store[@top] #shows the element at the @top position of @store
  end

  private #the methods below are private/inaccessible to user

  def full? #returns true when all elements are not "nil", which happens when @top == (@size - 1)
    @top == (@size - 1)
  end

  def empty? #returns true when all elements in the array are nil
    @top == -1 #when @top is equal to -1 then all the elements are nil
  end
end
