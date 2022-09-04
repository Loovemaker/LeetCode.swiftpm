import Foundation
public extension Solution {
    
    /// <doc:203.------->
    ///
    /// - ⌛️：85%
    /// - 🫙：5%
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var result = head
        result.remove { $0 == val }
        return result
    }
}
