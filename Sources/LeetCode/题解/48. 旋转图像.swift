public extension Solution {
    
    /// <doc:48.----->
    ///
    /// - ⌛️：100%
    /// - 🫙：97%
    func rotate(_ matrix: inout [[Int]]) {
        let size = matrix.count
        
        for depth in 0 ..< size / 2 {
            let subSize = size - 2 * depth
            let lastIndex = size - depth - 1
            for offset in 0 ..< subSize - 1 {
                let positions = (
                    (x: depth + offset, y: depth),
                    (x: lastIndex, y: depth + offset),
                    (x: lastIndex - offset, y: lastIndex),
                    (x: depth, y: lastIndex - offset)
                )
                
                let temp = matrix[positions.3.x, positions.3.y]
                matrix[positions.3.x, positions.3.y] = matrix[positions.2.x, positions.2.y]
                matrix[positions.2.x, positions.2.y] = matrix[positions.1.x, positions.1.y]
                matrix[positions.1.x, positions.1.y] = matrix[positions.0.x, positions.0.y]
                matrix[positions.0.x, positions.0.y] = temp
            }
        }
    }
}
