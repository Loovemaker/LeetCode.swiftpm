public extension Solution {
    
    /// <doc:144.--------->
    ///
    /// - ⌛️：82%
    /// - 🫙：88%
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return root.preorderTraversal
    }
}
