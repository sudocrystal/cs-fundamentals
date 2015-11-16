class Queue

  #Here we initialize an array called q with the front at -1 and and rear of the q at index 0. The front will always be at -1 and could be a constant.
  def initialize(size)
    @size = size
    @q = Array.new(@size)
    @front = -1
    @rear = 0
  end

  #Here we check if the queue is empty, then start to take off an element.  We set whatever is in the front, or rightmost side of the array equal to a local variable that is returned at the end, since we are "taking it off". Then to make the magic happen, we pop, or permanently remove that element from the array. This makes the length of the array @size - 1 until the following step, where we unshift, or add to the front of the array. Here front means left most side, which is the back of our queue. We add nil because now there is nothing in that place. Since we popped our element at @front off, whatever was 2nd in the queue is now at @front. We change the rear to be one more than the previous iteration, so now the "rear" moves closer to the right side of the array and doesn't index our recently added nil.
  def dequeue
     return nil if empty?
     element = @q[@front]
     @q.pop
     @q.unshift(nil)
     @rear += 1
     return element
   end

  #Here we check to make sure the queue isn't full and the element is not nil. Then we change the rear to be one less that it was before. In the first iteration, we make rear -1, and in the next -2, proceeding subsequenting to the left side of the array. This is because the "front" is on the right side, and every time we add an element we will add it to the left of the others already inside the array. We set the index of rear equal to the element.
  def enqueue(element)
    return nil if full? or element.nil?
    @rear -= 1
    @q[@rear] = element
    self
  end

  #returns the length of the queue
  def size
    @size
  end

  private

  #Rear is keeping track of the element that is leftmost in the array, or at the back of the line. The first time we add an element, we take rear from 0 to the negatives, descending in the array from right to left. If the absolute value of rear is the size of the array, that means there is something at the very back of the line, or at index[0] in the array, and thus our queue is full.
  def full?
     @rear.abs == @size
  end

  #If we have not added anything to the array, @rear will be at zero. The first time we add to the array we take rear to the negatives. Rear can never be positive, and is only zero if nothing is in the queue.
  def empty?
    @front == -1 and @rear == 0
  end
end
