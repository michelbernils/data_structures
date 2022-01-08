class List
    attr_accessor :head, :tail
   
    def initialize(head: nil, tail: nil)
      @head = head
      @tail = tail
    end

    def add(value)
      new_node = Node.new(value: value) 
    
      self.head = new_node if head.nil?
      self.tail = new_node if tail.nil?
     
      new_node.prev_node = self.tail
    
      self.tail.next_node = new_node
     
      self.tail = new_node
    end

    def last_node
      last_node = self.head

      until last_node.next_node.nil?
        last_node = last_node.next_node
      end

      item
    end

    def pop
      replace_tail = self.tail

      self.tail = replace_tail.prev_node
      self.tail.next_node = nil

      replace_tail.prev_node = nil
    end

    def shift
      replace_head = self.head

      self.head = replace_head.next_node
      self.head.prev_node = nil

      replace_head.next_node = nil
    end

    def unshift(value)
      new_head = Node.new(value: value)
      old_head = self.head

      old_head.prev_node = new_head
      new_head.next_node = old_head

      self.head = new_head
    end

    def print_list
      node = self.head
      output = []
     
      until node.nil?
        output << node.value
     
        node = node.next_node
      end
     
      output.join(", ")
    end

  end