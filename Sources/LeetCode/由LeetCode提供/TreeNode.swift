/// 二叉树
public class TreeNode {
    /// 节点的值
    public var val: Int
    /// 左树节点
    public var left: TreeNode?
    /// 右树节点
    public var right: TreeNode?
    
    /// 默认初始化方法
    /// - Parameters:
    ///   - val: 节点的值
    ///   - left: 左树节点
    ///   - right: 右树节点
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
    
    /// 默认无子树的初始化方法
    /// - Parameter val: 节点的值
    public convenience init(_ val: Int) {
        self.init(val, nil, nil)
    }
    /// 默认无子树且节点值为`0`的初始化方法
    public convenience init() { self.init(0) }
}
