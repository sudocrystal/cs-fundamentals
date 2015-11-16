# Create class Stack
class Stack
  # Initialize Stack objects with size as a parameter
  def initialize(size)
    # Save size integer as instance variable
    @size = size
    # Create and assign a nilful array of @size length. Nilful is a legit word, right?
    @store = Array.new(@size)
    # Assign @top to -1 to track the last element in the stack
    @top = -1
  end

  def pop # Take stuff off the stack
    if empty? # If the stack is empty, return nil
      nil
    else
      # Store last non-nil element (@top index) in stack as a local variable
      popped = @store[@top]
      # Set last non-nil element (@top index) in stack to nil
      @store[@top] = nil
      # Subtract 1 from @top
      @top = @top.pred
      # Return popped
      popped
    end
  end

  def push(element) # Put stuff on the stack
    # If stack is full or element is nil, return nil
    if full? or element.nil?
      nil
    else
      @top = @top.succ # Add 1 to @top
      # Change @top (nil) in array to element
      @store[@top] = element
      # Return stack instance
      self
    end
  end

  # Return the static size of the stack
  def size
    @size
  end

  # Return the last element in the stack array
  def look
    @store[@top]
  end

  # Keep it secret, keep it safe
  private

  # Does the stack have any nil elements?
  def full?
    @top == (@size - 1)
  end

  # Is top equal to its starting value at the end of the nilful array?
  def empty?
    @top == -1
  end
end
