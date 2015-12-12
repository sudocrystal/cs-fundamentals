class Stack
  def initialize(size)    #makes a stack of a certain size
    @size = size          #size of the stack stays constant throughout
    @store = Array.new(@size) #@store is an array that represents the stack. Where there is nothing in the stack, the array has an element that is nil.
    @top = -1 #the top of the stack is initialized at -1 (the final index of the array) but will change depending on whether we pop or push. Comparing top to size is how we tell whether the stack is full or empty.
  end

  def pop
    if empty? #if the stack is empty, there's nothing to pop out of it
      nil
    else
      popped = @store[@top] #the element of the top of the stack is set to a local var
      @store[@top] = nil #that index is now set to nil
      @top = @top.pred #@top moves down by one
      popped #the element that was popped out is returned
    end
  end

  def push(element)  #used to add something to the stack
    if full? or element.nil? #won't add if the stack is full or if you are trying to add a nil element
      nil
    else
      @top = @top.succ #the top becomes top + 1. So if you are starting with an empty stack, where @top = -1, now when you add an element the top is 0.
      @store[@top] = element #And, in my example, the element is now put into the array at the index where the top is (0).
      self #returns a modified stack. Notice that pop and push are not opposites of each other. They have different returns.
    end
  end

  def size #instead of an attr reader, this is explicitly written out
    @size
  end

  #An actual method you would want to call to use the stack. You can look at which element is at the top of the stack, which will be the element that will be removed/used/whatever you want to do to your stack.
  def look
    @store[@top]
  end

  private #don't know why

  def full?
    @top == (@size - 1) #so if the size of the stack is 10, and the top is at index 9, the stack is full- there are no nil elements.This confused me for a second, but the thing to remember is that size is the number of elements, whereas top is an index.
  end

  def empty?
    @top == -1 #When the array is initialized, the top is -1, and the stack is considered empty.
  end
end
