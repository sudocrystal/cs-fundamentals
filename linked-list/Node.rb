#this class is the underlying structure to linked lists.
class Node
  attr_accessor :data
  attr_accessor :next

#in each node there is a data and a next!!
  def initialize(data, nextnode)
    @data = data
    @next = nextnode
  end

  def to_s
	  return "[#{@data}]"
  end
end
