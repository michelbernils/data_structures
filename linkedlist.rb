class LinkedList

  attr_accessor :head

  def initialize
    self.head = nil
  end

  def add_node(value)
    if (self.head == nil)
      self.head = Node.new(value, nil)
    end

    curr_node = self.head
    while (curr_node.next_node != nil)
      curr_node = curr_node.next_node
    end
    curr_node.next_node = Node.new(value, nil)
  end 

  def find_node(value)
    curr_node = self.head

    while(curr_node != nil)
      if (curr_node.value == value)
        return puts "value found"
      end
      curr_node = curr_node.next_node
    end

    return puts "not found"
  end

  def remove_node(value)
    
  end

  def print_list
    curr_node = self.head
    while (curr_node = curr_node.next_node)
      puts curr_node.value
    end
  end

  private 

  class Node
    attr_accessor :value, :next_node
  
    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
  end
  


  # def delete_node(value)
  #   curr_node = @head

  #   if curr_node.value == value
  #     @head = current_node.next_node
  #   else

  #   while (curr_node.next_node != nil) && (curr_node.next_node.value != value)
  #     if (curr_node.next_node.value == value)
  #       puts 'aqui'
  #     end
  #   end
    
  #   curr_node = curr_node.next_node
  # end


end

ll = LinkedList.new
ll.add_node(1)
ll.add_node(2)
ll.add_node(3)
ll.add_node(4)
ll.print_list()
ll.find_node(4)
ll.find_node(5)
# ll.find_node(10)
# ll.delete_node(3)

