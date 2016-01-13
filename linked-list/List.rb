require './Node.rb'

class List
  attr_accessor :head
  def initialize
	  @head = nil
  end

  def empty?
	  @head.nil?
  end


  def add(data)
    # if the list is empty, add the first node
	  if @head == nil
	    @head = Node.new(data,nil)
	  else
      temp = @head
      while temp.next!= nil
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
    end
  end

  def add_at_index(index, data)
    if @head == nil
	    @head = Node.new(data,nil)
	  else
      temp = @head
      i = 1
      while temp.next!= index || temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
    end
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
  end

  def contains?(data)
    temp = @head
    while temp!= nil
      return true if temp.data == data
      temp = temp.next
    end
    return false
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
