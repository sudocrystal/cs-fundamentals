class Node
  attr_accessor :data
  attr_accessor :next

  def initialize(data, nextnode)
    @data = data
    @next = nextnode
  end

  def to_s
	  return "[#{@data}]"
  end
end
