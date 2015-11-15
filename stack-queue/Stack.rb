class Stack
  def initialize(size)    #makes a stack of a certain size
    @size = size          #size of the stack stays constant throughout
    @store = Array.new(@size) #@store is an array that represents the stack. Where there is nothing in the stack, the array has an element that is nil.
    @top = -1 #the top of the stack is initialized at -1 (the final index of the array) but will change depending on whether we pop or push. Comparing top to size is how we tell whether the stack is full or empty.
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred #@top subtract 1
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1) #so if the size of the stack is 10, and the top is 9.
  end

  def empty?
    @top == -1 #When the array is initialized, the top is -1.
  end
end
