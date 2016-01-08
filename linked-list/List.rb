require './Node.rb'

class List
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
      # if the list isn't empty, add after the last node
      temp = @head
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
    end
    # THIS EXAMPLE ONLY - IF ADDING TO FRONT - i.e. [c][b][a]
    # @head = Node.new(data,@head)
  end

  def add_at_index(index, data)
    # TODO Challenge: add data at a specific index
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
  end

  def contains?(data)
    # TODO: returns if the list contains data
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
