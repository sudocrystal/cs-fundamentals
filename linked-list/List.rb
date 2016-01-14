require './Node.rb'
require 'pry'

class List
  attr_reader :count
  attr_accessor :head

  def initialize
	  @head = nil
    @count = 0
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
      # get me to the last node
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data, nil)
    end
    @count += 1
  end

  # def add(data)
  #   # if the list is empty, add the first node
  #   if
  #   else
  #   end
  #
  #   if @head == nil
	#     @head = Node.new(data,nil)
	#   end
  #
  #
  #   # THIS EXAMPLE ONLY
  #   # b,a
  #   # make b point at head
  #   # reassign head
  #   # multiple lines:
  #     # new_node = Node.new(data,nil)
  #     # new_node.next = @head
  #     # @head = new_node
  #   # make a new node, point it at the head, then make that new node the head
  #     @head = Node.new(data,@head)
  #   # if the list isn't empty, add after the last node
  #   # TODO: this case
  # end

  # manipulate if you're given an index
  def add_at_index(index, data)
    # TODO Challenge: add data at a specific index
    if index < 0
      puts "Index is out of bounds!"
    elsif index == 0
      @head = Node.new(data,@head)
      @count += 1
    else
      current_index = 0
      temp = @head
      # until temp is the node directly before where we need to insert the new node
      until current_index == (index - 1) || temp.next == nil
        temp = temp.next
        current_index += 1
      end
      if temp.next == nil && current_index != (index - 1)
        puts "List does not contain enough nodes to add at index #{index}!"
      else
        new_node = Node.new(data, temp.next)
        temp.next = new_node
        @count += 1
      end
    end
  end

  def delete_at_index(index)
    # TODO Challenge: remove data from a specific index
    temp = @head
    if index < 0
      puts "Index is out of bounds!"
    elsif temp == nil
      puts "List is empty.  Not able to delete!"
    # if we need to delete the first node
    elsif index == 0
      # if the list is one node long
      if temp.next == nil
        @head = nil
      # if the list is more than one node long
      else
        # next node becomes the new head
        @head = temp.next
      end
      @count -= 1
    # list is more than one node long and we are not deleting the head node
    else
      current_index = 0
      # get to the index directly before the one being deleted
      until current_index == (index - 1)
        temp = temp.next
        current_index += 1
      end
      if temp.next == nil
        puts "No node at index #{index}!"
      else
        # make the temp node point to the node after the node being deleted
        temp.next = temp.next.next
        @count -= 1
      end
    end
  end

  def contains?(data)
    # Do this at hw
    # TODO Challenge: returns if the list contains data
    temp = @head
    while temp != nil
      return true if temp.data == data
      temp = temp.next
    end
    return false
  end

  # this method turns linked list into a string; must traverse through whole list to do this
  def to_s
    # if the list is empty, say so
    return "List is empty" if empty?
    # Otherwise, traverse through list to print contents
	  s = "List contents: "
	  temp = @head       # creates a temp pointer so we don't lose head of list
    # while I'm at a node that has data in it
    # update this based on what you're trying to do; you may want to stop sooner
	  while temp != nil  # while the current node isn't nil
      # add the data that's in temp
	    s += temp.to_s   # add the current node's data to print
      # move to next node
      temp = temp.next # move to the next node
	  end
	  return s
  end
end
