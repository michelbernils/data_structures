# frozen_string_literal: true
require "minitest/autorun"
require_relative '../lib/node'
 
class NodeTest < Minitest::Test
    def test_instance_node
        node = Node.new()

        assert_instance_of Node, node
    end

    def test_node_return_value
        value = 10
        node = Node.new(value: value)

        assert_equal value, node.value
    end

    def test_next_node
        node2 = Node.new(value: 2, next_node: nil)
        node = Node.new(value: 1, next_node: node2)

        assert_equal node.next_node, node2
    end

    def test_prev_node
        node2 = Node.new(value: 2, prev_node: nil)
        node = Node.new(value: 1, prev_node: node2)

        assert_equal node.prev_node, node2
    end
    
end