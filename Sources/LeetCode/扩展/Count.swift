extension Sequence where Element: Hashable {
    /// 各个元素出现的次数
    var elementCount: [Element: Int] {
        var result: [Element: Int] = [:]
        for e in self {
            result[e] = (result[e] ?? 0) + 1
        }
        return result
    }
}

extension Sequence {

    /// 某个元素出现的次数
    /// - Parameter element: 元素
    /// - Returns: 出现的次数
    func count(of element: Element) -> Int
    where Element: Equatable {
        count { $0 == element }
    }
    
    /// 满足某个条件的元素数量
    /// - Parameter predicate: 条件
    /// - Returns: 元素数量
    func count(where predicate: (Element) throws -> Bool) rethrows -> Int {
        try self.reduce(0) { partialResult, element in
            partialResult + (try predicate(element) ? 1 : 0)
        }
    }
}
