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
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
      #@head = Node.new(data, @head)
    # if the list isn't empty, add after the last node
    end
  end

  def add_at_index(index, data)
    #check if index exists
    #do a temp.next index times'
    #ADD new node at that index but do not replace any nodes
    #after the method my list should be one node longer
    # TODO Challenge: add data at a specific index
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
  end

  def contains?(d)
    temp = @head
    while temp != nil
      return true if temp.data == d
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
