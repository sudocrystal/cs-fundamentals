class Queue #this is the class for Queue, containing methods that can be used by Queue instances
  def initialize(size) #instantiates an instance of Queue, requiring a size parameter
    @size = size #this sets the instance variable of size equal to the parameter passed in when Queu was instantiated
    @store = Array.new(@size) # @store is set equal to an array of @size length. Ex, if @size = 3, then @store = [nil, nil, nil]
    @head, @tail = -1, 0 #this sets @head equal to -1, and @tail equal to 0
  end #ends the method

  def dequeue #method to insert a nil to the front and remove the item at the end of the queue's @store array (the last inserted one) if there is something there
    if empty? #runs this code if the private method for empty? is true, @head == -1 and @tail == 0, because then the array is full of nils and there is nothing to dequeue
      nil #returns nil
    else #else if it is not empty, runs the following code
      @tail = @tail.succ #the @tail instance variable becomes its values successor, so if it was -2 it becomes -1, or if its 0 it becomes 1 and so on.

      dequeued = @store[@head] #dequeued is set to the element in the @head position of the @store array, the last one
      @store.unshift(nil) #this is inserts "nil" to the front of the array, moving other elements over
      @store.pop #this removes the last element from the array
      dequeued #this returns the item that has been removed in the last step
    end
  end

  def enqueue(element) # method to insert an item into the @store array in place of the most right "nil" element, until all elements are no longer nil at which point it is full
    if full? or element.nil? #this returns nil if the @store array is already full of non-nil elements, or if trying to insert a nil element
      nil
    else
      @tail = @tail.pred #@tail becomes @tail - 1, so if it was 1 it becomes 0
      @store[@tail] = element #this sets the @store arrays position at @tail equal to the element now. This is replacing the right-most "nil" with the element
      self #returns the instance of queue, with its updated values
    end
  end

  def size #method that returns the size of the queue it is called on
    @size #returns the value of the @size instance variable
  end

  private  #the methods below are not public

  def empty? #returns true if the @store array is empty/ only contains "nil" in each of the array's positions
    @head == -1 and @tail == 0 #these are the original values for the empty @store array, and what the positions of these are when it is empty
  end

  def full? #returns true if @tcore has been filled with no "nil" elements
    @tail.abs == (@size) #full is true when the absolute value of @tail is equal to the size, thus when the array of this size is full of non-nil elements
  end
end
