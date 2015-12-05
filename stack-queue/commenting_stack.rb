class Stack
  #initializes a stack with a pile, which is an array, and a size of the array, passed through as a parameter. When testing in pry, this array is full of size nil elements. We also initialize an @top variable to be -1. Top represents the "top" of the stack, or the element that is acccessible to us.
  def initialize(size)
    @size = size
    @pile = Array.new(size)
    @top = -1
  end

  # In order to take an element off the top of the stack, first we check if the stack has anything in it by calling empty?. Then we set a variable "last" to the last element in the pile array, represented by @top. If this were the first iteration, @top would be -1 and thus @pile[-1] is the last element. After that, we set the last space of @pile to nil, because we've "removed" that element and put it in our local variable "last". Then we increment where the "top" of the stack is by subtracting one. In the first iteration, since we just set @pile[-1] to nil, the next last element in the stack is at @pile[-2], hence the increment. We then return the local variable last.
  def pop
    return nil if empty?
    last = @pile[@top]
    @pile[@top] = nil
    @top -= 1
    return last
  end

  #In order to put a element on top of the stack, we first check if the stack is full and then if the element is nil. If it's not, we increment the top of the stack to add 1, and then put our element at that index in the pile.
  def push(element)
    if full? or element.nil?
      return nil
    else
    @top += 1
    @pile[@top] = element
    return self
    end
  end

  #This method will tell us the size of the stack, which is how many elements possible to put in it.
  def size
    return @size
  end

  # This method will return the element that is at the top of the stack. The instance variable @top is manipulated as we add and remove elements in other method. Here, we use it to index the last element in @pile.
  def look
    return @pile[@top]
  end

  private

  #To check if the @pile is full, we check to see is the index of what is on top is the same as the size of the stack. Since our stack is an array and indexed starting at 0, we check if the top is equal to @size - 1.
  def full?
    @top == (@size-1)
  end

#To see is the pile has an elements in it, we check to see if the top is at index -1. There there were anything in the stack, it would be at -2. But the only way for @top to be -1 is if the last element were nil, meaning there is nothing in the stack.
  def empty?
    @top == -1
  end
end
