require './List.rb'
require './Node.rb'
require './linked-list-practice.rb'
require "minitest/autorun"

class TestList < Minitest::Test
  def setup
    @list = List.new
  end

  def test_is_empty
    assert @list.empty?
  end

  def test_adding
    @list.add("a")
    @list.add("b")
    @list.add("c")
    @list.add_at_index(0,"z") # [z][a][b][c]
    assert_equal "List contents: [z][a][b][c]", @list.to_s
    assert !@list.empty?
  end

  def test_reversal
    @list.add("a")
    @list.add("b")
    @list.add("c")
    assert_equal "List contents: [c][b][a]", reverse(@list).to_s
  end
end
