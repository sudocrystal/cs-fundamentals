# Practicing Interview Problems

Technical interviews can be stressful, but like most anything else, they are a learned, practiced skill. DON'T PANIC! Technical interviews are not necessarily about evaluating the validity of your solution, but often are more about evaluating a candidate's technical communication skills and problem solving approach.

Read [Coding Interview Tips: How to get better at technical interviews without practicing](https://www.interviewcake.com/article/coding-interview-tips) and [Big O Notation: Using not-boring math to measure code's efficiency](https://www.interviewcake.com/article/big-o-notation-time-and-space-complexity)

If you approach problems systematically, and communicate clearly, you'll be most of the way there.

## Problem Solving approach

1. **Understand the Probem**
   * Ask your interviewer questions
   * Draw a picture of what you understand
   * Create a specific example

1. **Devise a plan**
   * What is the simplest approach that you can think of?
   * Have you solved any similar problems
   * Outline your approach in plain English
   * Draw a picture of your data structure

1. **Execute the plan**
   * Turn your plain language description into code
   * Write whiteboard code slowly
   * Check each step
   * Ask questions / call out places where you don't know the syntax

1. **Check your answer**
   * Run examples through your whiteboard code
   * Think about the number of steps that your solution takes
   * Can you improve your solution? Red, Green, Refactor!

## Example Problem: Reversing a Linked List

***Problem statement***: Given a linked list ```l```, write a method ```reverse``` that takes ```l``` as input and then returns a linked list ```rev_l``` which has its values in reverse order. You may mutate the list ```l```.

A linked list is defined via the following class:

```
class ListItem
  attr_accessor :value, :nxt
  def initialize(val, nxt = nil)
    @value = val
    @nxt  = nxt
  end
end
```

Each ListItem has a ```value``` method which returns the value stored in the list item, and a ```next``` method that returns the next ListItem if it exists and ```nil``` if that item does not exist.

Try to come up with _two_ solutions to this problem. Explain why 1 solution is better than the other.

Is there a better solution?
