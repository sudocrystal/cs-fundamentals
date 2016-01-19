require './Node.rb'

class List
  attr_accessor :head
  # there is nothing in the head to start, that's why it's nil. It's a reference to the first node
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
# otherwise, move along one
	  else
      temp = @head
# and while the next one is
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data, nil)
      # # Example ONLY:
      # # b,a
      # # make b node
      # new_node = Node.new(data,nil)
      # # make b point at head
      # new_node.next = @head
      # # reassign head
      # @head = new_node
    end
  end

  def add_at_index(index, data)
    # TODO Mostly required: add data at a specific index
  end

  def delete_at_index(index)
    # TODO Mostly required: remove data from a specific index
  end

# go through all the nodes and see if what's in there matches the parameter.
  def contains?(d)
    # TODO Required: returns if the list contains the inputted parameter
    # keep track of where you are in the list
    temp_head = @head
# is the data in temp the same as the param?
    while !temp_head.nil?
      return true if temp_head.data == d
# once you hit a return, it'll stop the method and exit.
      temp_head = temp_head.next
    end
    return false
  end

  def to_s
    # if the list is empty, say so
    return "List is empty" if empty?
    # Otherwise, traverse through list to print contents
	  s = "List contents: "
	  temp = @head       # creates a temp pointer so we don't lose head of list
	  while temp != nil  # while the current node isn't nil (not at the end of the list)
	    s += temp.to_s   # add the current node's data to print
      temp = temp.next # move to the next node
	  end
	  return s
  end
end
