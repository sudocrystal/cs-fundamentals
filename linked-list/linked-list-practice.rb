require './List.rb'

#complete this file by Thursday class.
def count_node(list)
  #I need a counter to keep track of the number
  count = 0
  #I need a temp to keep track of the head
  temp = list.head
    #only do these steps if the next node has something in it:
    if temp == nil
      return nil
    else
      # While the next node exists
      while temp.next != nil
        # add one to the counter
        count += 1
        # and move on to the next node.
        temp = temp.next
      end
    return count + 1
    end

  return "count_node not yet implemented"
end

def find_min(list)
  # supposed to tell you what is the smallest element.
  # need to remember what is the smallest thing.

  #set min to head data
  min = list.head.data
  temp = list.head
#If the head exsits, return nil
  if temp == nil
    return nil
  else
  #loop while temp is a node
    while temp != nil
    #check if temp data is less than min.
      if temp.data < min
        ##if it is less than the min variable, replace min with the smaller one.
        min = temp.data
      ##otherwise, do nothing.
      end
    #regardless, you want to move along.
    temp = temp.next
    end
    return min
  end
  return "find_min not yet implemented"
end

# this one is harder.
# we want the head to become the tail and every other number to reverse
# do it on paper first
# optional
def reverse(list)
  return "reverse not yet implemented"
end

# create a new linked list
my_list = List.new

# put some stuff in the list
my_list.add(2)
my_list.add(0)
my_list.add(6)
my_list.add(-1)
my_list.add(232)
my_list.add(-12)

# test methods above
puts "What's in my list?"
puts my_list

puts "NODE COUNT = #{count_node(my_list)}"
puts "SMALLEST ELEMENT = #{find_min(my_list)}"
puts "REVERSED LIST = #{reverse(my_list)}"
