/// 链表
public class ListNode {
    /// 节点的值
    public var val: Int
    /// 下一个链表节点
    public var next: ListNode? = nil
    
    /// 默认初始化方式
    /// - Parameters:
    ///   - val: 节点的值
    ///   - next: 下一个链表节点
    public init(_ val: Int, _ next: ListNode? = nil) { 
        self.val = val
        self.next = next
    }
    
    /// 默认节点值为`0`初始化方式
    public convenience init() {
        self.init(0)
    }
}
