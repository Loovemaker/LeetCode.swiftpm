public extension Solution {
    
    /// <doc:19.----------N---->
    ///
    /// - ⌛️：95%
    /// - 🫙：30%
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode(0, head)
        
        var front: ListNode? = dummy
        for _ in 0 ... n {
            front = front?.next
        }
        
        var rear: ListNode? = dummy
        while front != nil {
            front = front?.next
            rear = rear?.next
        }
        
        rear?.next = rear?.next?.next
        
        return dummy.next
    }
}
