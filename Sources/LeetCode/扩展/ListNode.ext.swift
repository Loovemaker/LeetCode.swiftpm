extension ListNode {
    /// 由序列生成链表
    /// - Parameter sequence: 序列
    convenience init?<S>(from sequence: S)
    where S: Sequence, S.Element == Int {
        let root: ListNode = .init()
        var current: ListNode? = root
        
        for element in sequence {
            current?.next = .init(element)
            current = current?.next
        }
        
        guard let result = root.next else { return nil }

        self.init(result.val, result.next)
    }
}
extension Sequence where Element == Int {
    /// 由序列生成链表
    var asListNode: ListNode? {
        ListNode(from: self)
    }
}

extension ListNode: Equatable {
    /// 对应的数组序列
    var array: [Int]! {
        var result: [Int] = []
        
        var current = self
        result.append(current.val)
        
        while let next = current.next {
            current = next
            result.append(current.val)
        }
        
        return result
    }
    
    /// 判断两个链表是否相等
    ///
    /// 使用对应的数组判断
    /// - Parameters:
    ///   - lhs: 左边的链表
    ///   - rhs: 右边的链表
    /// - Returns: 是否相等
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.array == rhs.array
    }
}

extension ListNode {
    /// 在链表尾部追加链表节点
    /// - Parameter val: 节点的值
    /// - Returns: 追加的链表节点
    func append(_ val: Int) -> ListNode {
        var current = self
        while let next = current.next {
            current = next
        }
        let next = ListNode(val)
        current.next = .init(val)
        return next
    }
}

extension ListNode {
    /// 从链表中移除下一个节点
    func removeNext() {
        self.next = self.next?.next
    }
}

extension Optional where Wrapped == ListNode {
    typealias Predicate = (Int) throws -> Bool
    
    /// 移除值符合条件的节点
    /// - Parameter predicate: 条件
    mutating func remove(where predicate: Predicate) rethrows {
        let dummy = ListNode(0, self)
        var prev = dummy
        var current = self
        
        while current != nil {
            defer { current = current?.next }
            guard try predicate(current!.val) else {
                prev = prev.next!
                continue
            }
            prev.removeNext()
        }
        
        self = dummy.next
    }
}
