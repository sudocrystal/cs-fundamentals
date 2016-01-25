class Stack
  #this methos initialize the Stack Object
  #with an array called @store that it's size is as the argument.
  # the top is the index that point on the last cell in the array (since it's a stack)
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end
  # before we pop value we check the array is not empty - if it is - return nil. if not -->
  #we store the top value in the stack (the last index in the array) in a variable calles "popped"
  # and then we want the top will be the last value in the stack, so we take -1 of the top value
  # using pred. method -> so now, our array is in the same size as before , but the top is pointing on the last
  #cell that has value in it. and it return the value we popped.
  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred #@top--
      popped
    end
  end

  # if the array (stack) is full -> we can't push anything so return nil, and if the argument is nil, so we don't want to push it as well.
  # before it pushed the element, it moves the top to the next cell by +1 , using .succ method -> since the top is change index
  #and it save in the last index of top the new variable, so now it's the last element in the array.
  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end
#reurn the array (stack) size  => it's not means that it's full.
  def size
    @size
  end
# view the last element in the stack
  def look
    @store[@top]
  end

# 2 private boolean methods
# full - return true when the stack is full
  private

  def full?
    @top == (@size - 1)
  end
  # empty? - return true when there are no elements in the stack.

  def empty?
    @top == -1
  end
end
