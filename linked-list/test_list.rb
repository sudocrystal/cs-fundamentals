require './List.rb'
require './Node.rb'

x = List.new
puts "Is the list empty? " + x.empty?.to_s
puts x.to_s
x.add("a")
x.add("b")
x.add("c")
puts x.to_s
puts "Is the list empty? " + x.empty?.to_s

puts "Should be true: #{x.contains?("a")}"
puts "Should be false: #{x.contains?("jfkdlsajfdks")}"
