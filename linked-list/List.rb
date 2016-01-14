require './Node.rb'
require 'pry'

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
    # THIS EXAMPLE ONLY - Adss to the front of the list
    #b, a
    # make b node
    # new_node = Node.new(data, nil)
    # #make b point at head
    # new_node.next = @head
    # #reassign head
    # @head = new_node

    # if the list isn't empty, add after the last node
    # TODO: this case
      temp = @head
  	  while temp.next != nil
        temp = temp.next
  	  end
  	  temp.next = Node.new(data,nil)
    end
  end

  def add_at_index(index, data)
    # TODO Challenge: add data at a specific index
    temp = @head

    if index == 0
      @head = Node.new(data,@head)
    else
      index_keep = 1
      while (index) != index_keep
      index_keep += 1
      temp = temp.next
      end
      if (index) == index_keep
        new_data = Node.new(data,temp.next)
        temp.next = new_data
      end
    end
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
    temp = @head
    if index == 0
      @head = temp.next
    else
      index_keep = 1
      while index != index_keep
        index_keep += 1
        temp = temp.next
      end
      if index == index_keep
        temp.next = temp.next.next
      end
    end
  end

  def contains?(data)
    # TODO Challenge: returns if the list contains data
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
