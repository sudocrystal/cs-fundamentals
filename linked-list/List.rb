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
    # TODO: this case
      temp = @head
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
      # THIS EXAMPLE ONLY
      # b,a
      # make b node
      # new_node = Node.new(data, nil)
      # make b point at the head
      # new_node.next = @head
      # reassign head
      # @head = new_node
      # @head = Node.new(data,@head)
    end
  end

  def add_at_index(index, data)
    # TODO Challenge: add data at a specific index
    temp = @head
    new_link = temp.next

    (index-1).times do
      temp = temp.next
      new_link = new_link.next
    end

    new_node = Node.new(data, nil)
    if index == 0
      @head = new_node
      new_node.next = temp
    else
      temp.next = new_node
      new_node.next = new_link
    end
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
    temp = @head
    new_link = temp.next

    (index-1).times do
      temp = temp.next
      new_link = new_link.next
    end

    if index == 0
      @head = @head.next
    else
      new_link = new_link.next
      temp.next = new_link
    end
  end

  def contains?(data)
    # TODO Challenge: returns if the list contains data
    temp = @head
    while temp != nil
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
