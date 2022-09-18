public extension Solution {
    
    /// <doc:2.----->
    ///
    /// - ⌛️：90%
    /// - 🫙：16%
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let base = 10
        var carry = 0
        
        var l1_ = l1
        var l2_ = l2
        
        let dummy = ListNode()
        var current = dummy
        
        while carry != 0 || l1_ != nil || l2_ != nil {
            let sum = carry + (l1_?.val ?? 0) + (l2_?.val ?? 0)
            carry = sum / base
            current.next = ListNode(sum % base)
            current = current.next!
            l1_ = l1_?.next
            l2_ = l2_?.next
        }
        
        return dummy.next
    }
}
