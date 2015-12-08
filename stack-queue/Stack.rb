class Stack
  #indicates that the parameter 'size' must be included to create new object of Stack class
  def initialize(size)
    #@size stores the value indicated in parameter
    @size = size
    #@store creates new array with size indicated in parameter and stored in @size
    @store = Array.new(@size)
    #this is indicating the array location of the last element in the array which starts with no value -> nil
    @top = -1
  end

  def pop
    #if there are no elements in the array, return nil value
    if empty?
      nil
    else
      #picks the last element in the array to be popped first
      popped = @store[@top]
      #sets the location that was just popped, to nil - though original value is still saved in "popped" variable
      @store[@top] = nil
      #.pred takes the integer -1 we set at the instance, and reduces it by one, which moves to the next index location (2nd to last element in array)
      @top = @top.pred #@top
      #returns value of element assigned to "popped" variable
      popped
    end
  end

  def push(element)
    #calls private method full? - if true then returns nil, also returns nil if element in parameter is already nil
    if full? or element.nil?
      nil
    else
      #increases integer value of @top by +1.  Basically makes one more "spot" for an element to go at the end of the array
      @top = @top.succ
      #sets the value of the array at the index of @top, to the element entered in the parameter of push()
      @store[@top] = element
      #returns the entire array- with new element from push(element) listed last
      self
    end
  end

  def size
    #returns size of stack specified in instance of new object
    @size
  end

  def look
    #returns value of last element of array without removing it from stack
    @store[@top]
  end

  private

  def full?
    #returns true if the location of the last element in the array, is the same as the size instantiated for the whole array
    @top == (@size - 1)
  end

  def empty?
    #return true if the top element is not at index location 0 or larger (which means there are no elements in the stack)
    @top == -1
  end
end
