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

  def find_tail
    temp = @head
    while !temp.next.nil?
      temp = temp.next
    end
    return temp
  end

  def add(data)
    # if the list is empty, add the first node
    if @head.nil?
      @head = Node.new(data,nil)
    else
      last_node = find_tail
      last_node.next = Node.new(data, nil)
    end
  end

  def find_node_at_index(index)
    i = 0
    temp = @head
    while i != index
      temp = temp.next
      i += 1
    end
    return temp
  end

  def add_at_index(index, data)
    if index == 0
      new_node = Node.new(data, @head)
      @head = new_node
    else
      prev_node = find_node_at_index(index - 1)
      return puts "Error adding #{data} at index #{index}: Index is too large" if prev_node.nil?
      new_node = Node.new(data, prev_node.next)
      prev_node.next = new_node
    end
  end

  def delete_at_index(index)
    if index == 0
      @head = @head.next
    else
      prev_node = find_node_at_index(index - 1)
      return puts "Error deleting node at index #{index}: Index is too large" if prev_node.next.nil?
      prev_node.next = prev_node.next.next
    end
  end

  def contains?(data)
    temp = @head
    until temp.nil? do
      return true if data == temp.data
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
	  while !temp.nil?  # while the current node isn't nil
	    s += temp.to_s   # add the current node's data to print
      temp = temp.next # move to the next node
	  end
	  return s
  end
end
