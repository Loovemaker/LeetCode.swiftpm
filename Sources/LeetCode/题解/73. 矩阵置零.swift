public extension Solution {
    
    /// <doc:73.----->
    ///
    /// - ⌛️：78%
    /// - 🫙：70%
    func setZeroes(_ matrix: inout [[Int]]) {
        let height = matrix.count
        let width = matrix.first!.count
        // [0][] and [][0]
        var (firstRowhasZero, firstColumnhasZero) = (false, false)
        for x in 0 ..< width {
            if matrix[0][x] == 0 {
                firstRowhasZero = true
                break
            }
        }
        for y in 0 ..< height {
            if matrix[y][0] == 0 {
                firstColumnhasZero = true
                break
            }
        }
        // computes [1...][1...] and puts into [0][] and [][0]
        for x in 1 ..< width {
            var hasZero = false
            for y in 0 ..< height {
                if matrix[y][x] == 0 {
                    hasZero = true
                    break
                }
            }
            if hasZero { matrix[0][x] = 0 }
        }
        for y in 1 ..< height {
            var hasZero = false
            for x in 0 ..< width {
                if matrix[y][x] == 0 {
                    hasZero = true
                    break
                }
            }
            if hasZero { matrix[y][0] = 0 }
        }
        // computes [0][] and [][0] and puts into [1...][1...]
        for x in 1 ..< width {
            if matrix[0][x] == 0 {
                for y in 1 ..< height {
                    matrix[y][x] = 0
                }
            }
        }
        for y in 1 ..< height {
            if matrix[y][0] == 0 {
                for x in 1 ..< width {
                    matrix[y][x] = 0
                }
            }
        }
        // [0][] and [][0]
        if firstRowhasZero {
            for x in 0 ..< width {
                matrix[0][x] = 0
            }
        }
        if firstColumnhasZero {
            for y in 0 ..< height {
                matrix[y][0] = 0
            }
        }
    }
}
