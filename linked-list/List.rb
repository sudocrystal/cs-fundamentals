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
      # for an example that goes in order b, a
      # make b node
      # make b point at head
      # reassign the head
      # @head = Node.new(data, @head)
      # for the proper example:
      # if the list isn't empty, add after the last node
      temp = @head
      # this loop gets you to the last node
      while !temp.next.nil?
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
    end
  end

  def add_at_index(index, data)
    # Challenge: add data at a specific index
    if index == 0
      temp = @head
      @head = Node.new(data, temp)
    else
      temp = @head
      (index - 1).times do
        temp = temp.next
      end
      temp.next = Node.new(data, temp.next)
    end
  end


  def delete_at_index(index)
    # Challenge: remove data from a specific index
    if index == 0
      temp = @head
      @head = temp.next
    else
      temp = @head
      (index - 1).times do
        temp = temp.next
      end
      temp.next = temp.next.next
    end
  end

  def contains?(data)
    # Challenge: returns if the list contains data
    result = false
    temp = @head
    while temp != nil
      if temp.data == data
        result = true
      end
      temp = temp.next
    end
    return result
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
