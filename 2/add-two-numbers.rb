# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  l1_arr = []
  l2_arr = []

  while l1
   l1_arr << l1.val
   l1 = l1.next
  end
  
  while l2
   l2_arr << l2.val
   l2 = l2.next
  end

  create_linked_list((l1_arr.reverse.join.to_i) + (l2_arr.reverse.join.to_i))
end

def create_linked_list(answer)
  head = nil
  current = nil

  array = answer.to_s.reverse.split("")
 
 array.each do |num|
  new_node = ListNode.new(num)

  if head.nil?
      head = new_node
    else
      current.next = new_node
  end

  current = new_node
  

 end
  head
end