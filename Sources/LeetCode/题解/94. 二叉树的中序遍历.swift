public extension Solution {
    
    /// <doc:94.--------->
    ///
    /// - ⌛️：84%
    /// - 🫙：96%
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        guard let root = root else { return [] }
        
        return root.inorderTraversal
    }
}
