# frozen_string_literal: true
require "minitest/autorun"
require_relative '../lib/node'
require_relative '../lib/list'

class ListTest < Minitest::Test
    def test_list_head
        node = Node.new(value: 1)
        list = List.new(head: node)

        assert_equal list.head, node
    end
    
    def test_list_setter
        node = Node.new(value: 123)
        list = List.new()
        list.head = node

        assert_equal list.head, node
    end

    def test_add_on_empty_list
        list = List.new()
        list.add(1)
        
        assert_equal list.head.value, 1
    end

    def test_add_node
        list = List.new()
       
        for number in 1..10 do
          list.add(number)
        end
       
        list.add(1)
       
        assert_equal list.tail.value, 1
    end

    def test_list_tail
        node = Node.new(value: 1)
        list = List.new(tail: node)

        assert_equal list.tail, node
    end

    def test_list_tail_setter
        node = Node.new(value: 123)
        list = List.new()
        list.tail = node
       
        assert_equal list.tail, node
    end

    def test_list_pop
        list = List.new()

        for number in 1..10 do
            list.add(number)
        end
         
        list.pop
        
        assert_equal list.tail.value, 9
    end

    def test_list_shift
        list = List.new()

        for number in 1..10 do
            list.add(number)
        end
         
        list.shift
        
        assert_equal list.head.value, 2
    end

    def test_list_unshift
        list = List.new
       
        list.add(2)
        list.add(3)
        list.add(4)
        list.add(5)
       
        list.unshift(1)
       
        assert_equal list.head.value, 1
    end

    def test_list_print
        list = List.new
       
        list.add(1)
        list.add(2)
        list.add(3)
        list.add(4)
       
        assert_equal list.print_list, "1, 2, 3, 4"
    end
end