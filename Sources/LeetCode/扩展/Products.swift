extension Collection {
    /// 笛卡尔积
    /// - Parameters:
    ///   - other: 另一个`Collection`
    ///   - productMethod: 积的方法
    /// - Returns: 笛卡尔积结果
    func cartesianProduct<Other, ResultElement>(
        with other: Other,
        productMethod: (Element, Other.Element) -> ResultElement
    ) -> [ResultElement]
    where Other: Collection {
        var result: [ResultElement] = []
        
        for lElement in self {
            for rElement in other {
                result.append(productMethod(lElement, rElement))
            }
        }
        
        return result
    }
    
}
