require 'pry'
class Node
  attr_accessor :data
  attr_accessor :next

  def initialize(data, nextnode)
    @data = data
    @next = nextnode
  end

  def empty?
    @data.nil?
  end


  def to_s
	  return "[#{@data}]"
  end

  #different from to_s in that this is a way of printing a whole list
  #the given node onward
  def to_s_recursive
    return "Starting node is nil" if empty?
    temp = self
    s = temp.to_s
    if temp.next.nil?
      return s
    else
      s += temp.next.to_s_recursive
    end
  end
end
