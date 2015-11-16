class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    #array size is limited
    @top = -1
    #the top will always be the last item in a stack
  end

  def pop
    #Removes the last element from self and returns it, or nil if the array is empty.
    if empty?
      nil
    else
      popped = @store[@top]
      #Will pop off last item in the array
      @store[@top] = nil
      @top = @top.pred #@top--
      #Returns the Integer equal to int - 1.
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      # Incrementing a digit always results in another digit, and incrementing a letter results in another letter of the same case.
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
    #@top = -1, will give the last item in @store
  end

  private

  def full?
    @top == (@size - 1)
    #will return true or false for full
  end

  def empty?
    @top == -1
    #will return true or false for empty
  end
end
