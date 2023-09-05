public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        
        var previous = head
        var current = head?.next
        
        while current != nil {
            if previous?.val == current?.val {
                previous?.next = current?.next
            } else {
                previous = current
            }
            current = current?.next
        }
        
        return head
    }
}

let solution = Solution()

var head: ListNode?
head = ListNode(1, ListNode(1, ListNode(2)))
head = solution.deleteDuplicates(head)

while head != nil {
    print(head?.val)
    head = head?.next
}

head = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(3)))))
head = solution.deleteDuplicates(head)

while head != nil {
    print(head?.val)
    head = head?.next
}
