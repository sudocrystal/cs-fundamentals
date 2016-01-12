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
	    @head = Node.new(data, nil)
    # else
    # # if the list isn't empty, add after before last node
    #   @head = Node.new(data, @head)
    else
      temp = @head
      while temp.next != nil
        temp = temp.next
      end
      temp.next = Node.new(data, nil)
	  end
  end

  def add_at_index(index, data)
    temp = @head
    if index == 0
      new_node = Node.new(data, @head)
      @head = new_node
    else
      (index - 1).times do
        temp = temp.next
      end
      new_node = Node.new(data, temp.next)
      temp.next = new_node
    end
  end

  def delete_at_index(index)
    temp = @head
    if index == 0
      if temp.next == nil
        @head = nil
      else
        @head = temp.next
      end
    else
      (index - 1).times do
        temp = temp.next
      end
      temp.next = temp.next.next
    end
  end

  def contains?(data)
    temp = @head
    while !temp.nil?
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
	  while !temp.nil?   # while the current node isn't nil
	    s += temp.to_s   # add the current node's data to print
      temp = temp.next # move to the next node
	  end
	  return s
  end

end
