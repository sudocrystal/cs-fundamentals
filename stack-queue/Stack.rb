#
# PART II: Commenting RubyMonk's Code
# Logan McDonald, Cohort 4
#

# The Stack class 
class Stack

	# initalize the Stack class with size as the parameter 
  def initialize(size)
  	# The size is an instance variable saved here
    @size = size
    # Store is an instance variable which creates a new Array with @size length
    @store = Array.new(@size)
    # the top variable tracks the last element, I'm renaming it to "@top_index" because that's clearer to me what it's doing
    @top_index = -1
  end
  
  # A method that 'pop's' something off the array
  def pop
  	# When the stack is empty, returns nil
    if empty?
      nil

    # If it isn't empty do this
    else
    	# Store the top_index, or the last element that isn't nil as the local variable 'popped'
      popped = @store[@top_index]
      # Then set that same last element that isn't nil as nil
      @store[@top_index] = nil
      # Take away one from the top
      # Read the docs for .pred because I'd never seen it
      # It returns the Integer equal to the Int minus 1
      @top_index = @top_index.pred #@top_index--
      # Return local variable popped
      popped
    end
  end


  # Method that 'pushes' stuff onto the stack. Stuff being the parameter 'element'
  def push(element)
  	# If it's full or the element being pushed is nil, return nil
    if full? or element.nil?
      nil
    # Otherwise do this
    else
    	# .succ returns the integer equal to Int + 1 so this adds 1 to the top_index
      @top_index = @top_index.succ
      # Change the @top_index which is nil to the element added which isn't nil because that would be covered by the if statement
      @store[@top_index] = element
      # Returns the stack instance 
      self
    end
  end
  
  # Method that returns the size instance from above so that it won't be different as it's changed in other methods
  def size
    @size
  end
  
  # Returns the last element of the array
  def look
    @store[@top_index]
  end
  
  private
  
  # Private method that checks if the stack has any nil elements
  def full?
    @top_index == (@size - 1)
  end
  
  # Private method that returns a boolean if the @top_index is actually the last element in the array, meaning is it equal to the starting value at the end of the array
  def empty?
    @top_index == -1
  end
end
