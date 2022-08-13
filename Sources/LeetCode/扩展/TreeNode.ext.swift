extension TreeNode {
    /// 默认初始化方法
    /// - Parameters:
    ///   - val: 节点的值
    ///   - left: 左树节点
    ///   - right: 右树节点
    convenience init(_ val: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
        self.init(val, left, right)
    }
}

extension TreeNode {
    /// 前序遍历结果
    var preorderTraversal: [Int] {
        [self.val] + (self.left?.preorderTraversal ?? []) + (self.right?.preorderTraversal ?? [])
    }
    /// 中序遍历结果
    var inorderTraversal: [Int] {
        (self.left?.inorderTraversal ?? []) + [self.val]  + (self.right?.inorderTraversal ?? [])
    }
    /// 后序遍历结果
    var postorderTraversal: [Int] {
        (self.left?.postorderTraversal ?? []) + (self.right?.postorderTraversal ?? []) + [self.val] 
    }
}

extension Optional where Wrapped: TreeNode {
    /// 判断两个树是否相等
    /// - Parameters:
    ///   - lhs: 左边的树
    ///   - rhs: 右边的树
    /// - Returns: 是否相等
    public static func == (lhs: TreeNode?, rhs: TreeNode?) -> Bool {
        (lhs === nil && rhs === nil) || (
            lhs?.val == rhs?.val
            && lhs?.left == rhs?.left
            && lhs?.right == rhs?.right
        )
    }
}
extension TreeNode: Equatable {
    /// 判断两个树是否相等
    /// - Parameters:
    ///   - lhs: 左边的树
    ///   - rhs: 右边的树
    /// - Returns: 是否相等
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        lhs.val == rhs.val
        && lhs.left == rhs.left
        && lhs.right == rhs.right
    }
}
