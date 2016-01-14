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
    # this example only (add to front)
    # b,a
    # new_node = Node.new(data, @head)
    # new_node.next = @head
    # @head = new_node
    # @head = Node.new(data,@head)
    #OTHER WAY
    # if the list isn't empty, add after the last node
      temp = @head
      while !temp.next.nil?
        temp = temp.next
      end
      temp.next = Node.new(data,nil)
    end
  end

  def add_at_index(index, data)
    #if the list is empty, make a node and add it to the head
    #remember to test for negative index, higher index, starting with empty list, last, first
    #really we're adding before the index, sort of
    if @head == nil
	    @head = Node.new(data,nil)
	  else
      #go to the node before the one of the index you've entered
      #if you enter an index that is past the end of the list, the node gets added to the end, and if it's negative we don't add it
      temp = @head
      if index >= 1
        (index - 1).times do
          unless temp.next.nil?
            temp = temp.next
          end
        end
        #hold on to the node after this node
        after = temp.next
        #point this before-node to a new node
        temp.next = Node.new(data, nil)
        #move to the new node
        temp = temp.next
        temp.next = after
      #to add at index 0, just have to add to the front
      elsif index == 0
        @head = Node.new(data,@head)
      end
    end
  end

  def delete_at_index(index)
    if @head == nil
      return "Nothing to delete"
    else
      temp = @head
      if index >= 1
        (index - 1).times do
          if temp.next.nil?
            temp = temp.next
          else
            puts "Nothing to delete"
            return
          end
        end
        to_delete = temp.next
        skip_to = to_delete.next
        #changing temp's next so as to skip over the deleted node
        temp.next = skip_to
        #to delete at index 0, change where head is
      elsif index == 0
        new_head = temp.next
        @head = new_head
      end
    end
  end

  def contains?(data)
    has_data = false
    stopping_point = false
    temp = @head
    while stopping_point == false
      if temp.data == data
        has_data = true
        stopping_point = true
      elsif
        temp.next.nil?
        stopping_point = true
      end
      temp = temp.next
    end
    return has_data
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
