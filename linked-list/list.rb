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
    end
      #if the list isn't empty, add after the last node
    # This is an example only
    # b,a
    # make b node, make b point at head
    # reassign head
      # @head = Node.new(data, @head)
  end

  def add_at_index(index, data)
    # Challenge: add data at a specific index
    current = @head
    previous = nil
    index.times do
      previous = current
      current = current.next
    end
    if previous.nil?
      @head = Node.new(data, @head)
    else
      previous.next = Node.new(data, current)
    end
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
  end

  def contains?(data)
    # returns if the list contains data
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
