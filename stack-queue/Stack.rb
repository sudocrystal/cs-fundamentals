class Stack #defines the stack class
  def initialize(size)#method definition to create a new instance of Stack 
  #using the instance variable size as a fixed number for the number of items that can be in the stack
    @size = size #saves the value of size in the instance variable @size so the value can be used across
    #multiple methods in the Stack class
    @store = Array.new(@size)#the instance variable @store saves a new instance of an array with a fixed number of slots
    #as dictated by the number saved in @size. The value in each of the slots is nil
    @top = -1#@top has the integer -1 saved in it to index the last item in the array. Because we are working with a 
    #stack, we are following a first in, last out sequence, so using an @top variable will be useful to be able to access
    #the last element in the array, which will be the first element accessed in the stack
  end
  
  def pop#a method to be able to take an item off of the stack, so the last item in the array
    if empty?#if the slot is empty, the slot will have nil in it
      nil
    else
      popped = @store[@top]#local variable definition: the local variable popped allows us to access the last element in the @store array because 
      #@top is equal to -1
      @store[@top] = nil#this bit of code assigns the value nil to the last element in the @store array
      @top = @top.pred #@top-- pred will take the integer that is currently saved in @top and decrement it by 1,
      # then the resulting value is reassigned to @top
      popped# this calls the code in the popped local variable with the new values for @store and @top 
    end
  end
  
  def push(element)#allows us to add an element to the end of the array, which will be the item that
  #will be the first in line to be worked with in the stak
    if full? or element.nil?#this dictates that if all of the slots are full or the element that is being pushed 
    #is nil, the result will be nil, so nothing can be added to the stack
      nil
    else
      @top = @top.succ#succ increments the integer saved in top by 1 and reassigns the value to @top
      @store[@top] = element#the value passed in the element variable is reassigned as the last value in the array
      #thereby being the first item in the stack
      self#allows us to access the current object
    end
  end
  
  def size
    @size#the @size method allows us to be able to use the current value stored in @size in any of our other methods
  end
  
  def look
    @store[@top]#this will allow us to see the value stored in the last element of the array, or the thing at the top of our stack
  end
  
  private
  
  def full?
    @top == (@size - 1)#this lets us determine if the stack is full by comparing the value in @top and seeing if
    #it is equal to the value stored in @size -1. If the two values are equal, the stack is full and no additional
    #elements may be added.
  end
  
  def empty?
    @top == -1 #if the current value stored in @top is equal to -1, that means there are no elements in the stack
    #so it is empty
  end
end
