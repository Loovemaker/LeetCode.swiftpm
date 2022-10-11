extension Sequence {
    
    /// 得到满足条件的所有索引值
    ///
    /// 使用`enumerated`得到`Int`索引值，因此不能得到`String.Index`
    /// - Parameter predicate: 条件
    /// - Returns: 索引值的列表
    func indices(where predicate: (Element) -> Bool) -> [Int] {
        var result: [Int] = []
        for (index, element) in self.enumerated() {
            if predicate(element) { result.append(index) }
        }
        return result
    }
}
