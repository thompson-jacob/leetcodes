# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  set = Set.new
  
  return false if head == nil || head.next == nil
  while head
    if set.include?(head.object_id)
        return true
    end
    set << head.object_id
    head = head.next
  end
  false
end

#approach uses set instead of array to optimize
