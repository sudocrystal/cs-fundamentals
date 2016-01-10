require './Node.rb'
require 'pry'

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
      # Example only - adding to beginning of list
      # @head = Node.new(data, @head)
      temp = @head
      while !temp.next.nil?
        temp = temp.next
      end
      temp.next = Node.new(data, nil)
    end
  end

  def add_at_index(index, data)
    if index == 0
      @head = Node.new(data, @head)
    else
      temp = @head
      temp_next = @head.next
      current_index = 0
      while current_index + 1 < index
        if temp.next.nil?
          puts "The list isn't long enough to add at index #{index}."
          return nil
        else
          temp = temp.next
          temp_next = temp.next
          current_index += 1
        end
      end
      temp.next = Node.new(data, temp_next)
    end
  end

  def delete_at_index(index)
    if index == 0
      @head = @head.next
    else
      temp = @head
      current_index = 0
      while current_index + 1 < index
        temp = temp.next
        current_index += 1
        if temp.next.nil?
          puts "The list isn't long enough to delete at index #{index}."
          return nil
        end
      end
      temp.next = temp.next.next
    end
  end

  def contains?(data)
    temp = @head
    while true
      if temp.data == data
        return true
      elsif temp.next.nil?
        return false
      end
      temp = temp.next
    end
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
