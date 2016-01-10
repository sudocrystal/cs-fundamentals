require './Node.rb'

class List
  def initialize
	  @head = nil
    @tail = nil
  end

  def empty?
	  @head.nil?
  end

  def add(data)
    # if the list is empty, add the first node
	  if self.empty?
	    @head = Node.new(data,nil)
      @tail = @head
    else
      previous = @tail
      temp = Node.new(data,nil)
      previous.next = temp
      @tail = temp
	  end
  end

  def add_at_index(index, data)
    #case if trying to add something at the very beginning - must set the nextnode to be the former head
    if index == 0
      @head = Node.new(data, @head)
      #if there was nothing in the list before we added something at index 0, we must set the tail to the added node, otherwise it would always be nil (as initialized)
      if @tail == nil
        @tail = @head
      end
    # if we are not added something at the very beginning, we must iterate through each node starting from the beginning
    else
      node = @head
      count = 0
      # we stop iterating at index - 1 so we can set nextnode correctly for the node previous to the one we add. There is no previous method since this is not a doubly linked list!
      while count != index-1
        # we must check here that a node exists, otherwise we are adding at an index larger than our list
        if node == nil
          puts "list is not long enough for that"
          return false
        end
        # iterate to the next node
        node = node.next
        count += 1
      end
      # add the node at the correct index
      node.next = Node.new(data, node.next)
      #case for if we are adding at the last index aka the end of the list then we must reset the tail!
      if node.next.next == nil
        @tail = node.next
      end
    end
  end

  def delete_at_index(index)
    node = @head
    count = 0
    #case if the list was empty
    if index == 0 && node == nil
      puts "there was nothing in the list to delete"
      return false
    #case if there was only one node in the list
    elsif index == 0 && node.next == nil
      node = nil
      puts "list is now empty"
      @head = nil
      @tail = nil
    #case if the node deleted is the very first one
    elsif index == 0
      node = node.next
      @head = node
    else
    #iterate through the nodes
      while count != index-1
        if node == nil
          puts "list is not long enough for that"
          return false
        end
        node = node.next
        count += 1
      end
      #erase the node being deleted from the link system
      node.next = node.next.next
      #case if you delete the final node, reset the tail
      if node.next == nil
        @tail = node
      end
    end
  end

  def contains?(data)
    node = @head
    while true
      if node.data == data
        puts "yes!"
        return true
      elsif node.next == nil
        puts "nope"
        return false
      else
        node = node.next
      end
    end
  end

  def to_s
    # if the list is empty, say so
    return "List is empty" if empty?
    # Otherwise, traverse through list to print contents
	  s = "List contents: "
	  temp = @head       # creates a temp pointer so we don't lose head of list
	  while temp != nil  # while the current node isn't nil
	    s += temp.to_s   # add the current node's data to print
      temp = temp.next # move to the next node
	  end
	  return s
  end
end
