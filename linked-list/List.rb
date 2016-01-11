require './Node.rb'

class List
  def initialize
	  @head = nil
  end

  def empty?
	  @head.nil?
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

  def add(data)
    # if the list is empty, add the first node
    if @head == nil
      @head = Node.new(data,nil)
    else
      temp = @head
      while !temp.next.nil?
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
    end
  end

  def contains?(data)
    # returns true if the list contains that data anywhere
    # this isn't working...
    temp = @head
    while !temp.next.nil?
      if temp.data == data
        return true
      end
      temp = temp.next
    end
    return false
  end

  def add_at_index(index, data)
    # Challenge: add data at a specific index
    temp = @head
    if index == 0
      @head = Node.new(data, temp)
    else
      (index - 1).times do
        temp = temp.next
      end
      temp.next = Node.new(data, temp.next)
    end
  end

  def delete_at_index(index)
    # Challenge: remove data from a specific index
    temp = @head
    if index == 0
      @head = temp.next
    else
      (index - 1).times do
        temp = temp.next
      end
      temp.next = temp.next.next
    end
  end
end
