class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end

end

class LinkedList

  def initialize(head)
    @head = Node.new(head, nil)
  end
  
  def add_node(value)
    curr_node = @head
    while (curr_node.next_node != nil)
      curr_node = curr_node.next_node
    end
    curr_node.next_node = Node.new(value, nil)
  end

  def delete_node(value)
    curr_node = @head

    if curr_node.value == value
      @head = current_node.next_node
    else


    
    while (curr_node.next_node != nil) && (curr_node.next_node.value != value)
      if (curr_node.next_node.value == value)
        puts 'aqui'
      end
    end
    
    curr_node = curr_node.next_node
  end



  def print_list
    curr_node = @head
    puts curr_node.value

    while (curr_node = curr_node.next_node)
      puts curr_node.value
    end
  end


end



ll = LinkedList.new(1)
ll.add_node(2)
ll.add_node(3)
ll.add_node(4)
ll.delete_node(3)
ll.print_list()