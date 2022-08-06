public extension Solution {
    
    // time beats 56%, space beats 73%
    /// <doc:21.--------->
    ///
    /// - ⌛️：56%
    /// - 🫙：73%
    /// - Parameters:
    ///   - list1: 有序链表
    ///   - list2: 有序链表
    /// - Returns: 合并后的有序链表
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        guard let list1 = list1 else { return list2 }
        guard let list2 = list2 else { return list1 }
        
        if list1.val < list2.val {
            list1.next = mergeTwoLists(list1.next, list2)
            return list1
        } else {
            list2.next = mergeTwoLists(list2.next, list1)
            return list2
        }
    }
}
