public extension Solution {
    
    /// <doc:234.----->
    ///
    /// - ⌛️：100%
    /// - 🫙：19%
    func isPalindrome(_ head: ListNode?) -> Bool {
        guard let array: [Int] = head?.array else { return true }
        
        return array == array.reversed()
    }
}
