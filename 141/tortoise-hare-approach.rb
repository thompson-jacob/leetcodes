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
  jackalope = slug = head
  
  
  return false if head == nil || head.next == nil
  while jackalope && jackalope.next
    slug = slug.next
    jackalope = jackalope.next.next

    return true if slug == jackalope
  end
  false
  
end

# Notes: Since we have to traverse the entire length of the list, the only thing to optimize is memory. In order to do this we must get rid of the set.

#The Tortoise and Hare approach allows us to have a fast and slow pointer - with the fast pointer jumping ahead twice at each go. This allows for the tortoise be caught by the hare - if this happens, we know the loop exists as hare and tortoise are equivalent.