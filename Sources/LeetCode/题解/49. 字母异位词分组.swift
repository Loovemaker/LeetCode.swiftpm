public extension Solution {
    
    /// <doc:49.-------->
    ///
    /// - ⌛️：30%
    /// - 🫙：5%
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let groups = Dictionary(grouping: strs) {
            $0.elementCount
        }
        
        return groups.values.asArray
    }
}
