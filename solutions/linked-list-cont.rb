   def sort
     # loop through all the elements in the linked list
     @size.times do |i|
       ###display
       # each loop through start some temp variables at the front of the list
       before_max = nil
       current = @head
       max = @head
       # each cycle (i-1) elements are already in order at the end of the list
       # so loop through only the elements prior to the ones already in order
       (@size-i-1).times do
         # if you find an element larger than what you think is currently the max
         if current.next_node != nil && current.next_node.value > max.value
           # track the current node as now the max
           # and remember the node in front of the max
           before_max = current
           max = current.next_node
         end
         current = current.next_node
       end
       # once you've looped through all the elements on that cycle,
       # you have found the current largest element in the list

       # if it's not the element you're currently on, do some link swapping
       if max != current
         ###puts "max = #{max.value} before_max = #{before_max.nil? ? "nil" : before_max.value} \nmoving max after = #{current.value}"
         if before_max == nil
           # if the max is at the front of the list: special case of moving @head
           @head = @head.next_node
         else
           # otherwise link node before max to node after max
           before_max.next_node = max.next_node
         end
         # insert the max node at the end of the unordered items,
         # but before the ones you've already moved to the end of the list
         max.next_node = current.next_node
         current.next_node = max
       end
     end
   end
