public extension Solution {
    
    /// <doc:1260.------->
    ///
    /// - ⌛️：100%?
    /// - 🫙：100%?
    func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
        let size = (
            height: grid.count,
            width:  grid.first!.count
        )
        let offset = (
            row:    (k / size.width) % size.height,
            column: k % size.width
        )
        var result = grid
        
        for _ in 0 ..< offset.row {
            let element = result.popLast()!
            result.insert(element, at: 0)
        }
        
        for _ in 0 ..< offset.column {
            for row in grid.indices {
                let element = result[row].popLast()!
                result[(row + 1) % size.height].insert(element, at: 0)
            }
        }
        
        return result
    }
}
