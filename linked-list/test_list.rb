require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("c")
puts x.contains?("c").to_s # contains will result in true or false based on whether that's in
puts x.contains?("j").to_s

# x.add_at_index(4, "j") # should not add j
# puts x.to_s + " This should not include j"
# x.add_at_index(3, "j") # should add j
# puts x.to_s + " This should include j at the end"
# x.add_at_index(3, "m") # should add m
# puts x.to_s + " This should include m before j"

x.add_at_index(0, "z") # result: [z][a][b][c]
x.add_at_index(-1, "t")
x.delete_at_index(1) # result: [z][b][c]

# x.delete_at_index(3)
# puts x.to_s + " This should not change list" # result: [z][b][c]

# x.delete_at_index(0)
# puts x.to_s + " This should delete [z]" # result: [b][c]
# x.delete_at_index(1)
# puts x.to_s + " This should delete [c]" # result: [c]
# x.delete_at_index(0)
# puts x.to_s + " This should delete list" # result: [c]
# x.delete_at_index(0)
# puts x.to_s + " No list" # result: [c]

puts x.to_s
puts "Is the list empty? " + x.empty?.to_s
