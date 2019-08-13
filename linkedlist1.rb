class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
  attr_reader :data

  def initialize
    @data = nil
  end

    # Push a value onto the stack
  def push(value)
    @data =LinkedListNode.new(value, @data)
  end
    #the value is pushed onto the stack it will create a new linkedlistnode
    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
  def pop
    return print "nil\n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end
  #when pop from the stack it prints @data.value that is on top
  #sets the stack to be next_node
  #removing top Linkedlistnode from stack


def reverse_list(list)
  stack = Stack.new
  while list
    stack.push(list.value)  
    list = list.next_node
  end
  return stack.data
end

#traverse the linked list push each value onto the stack until the end of linkedlist.

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end
#building a method that uses recursion to traverse the linked list

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
# this is buidling up a linked list by creating some nodes

print_values(node3)
#output the contents of the linked list
puts "-- Linkedlist #1 --"
revlist = reverse_list(node3)
print_values(revlist)

#reversing the linked list