public extension Solution {
    
    /// <doc:36.------>
    ///
    /// - ⌛️：59%
    /// - 🫙：36%
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        let groupGetters: [String: (_ index: Int) -> [Character] ] = [
            "Row":      { index in board[index] },
            "Column":   { index in board.map { row in row[index] }},
            "Area":     { index in
                let position = (y: 3 * (index / 3), x: 3 * (index % 3))
                var result: [Character] = []
                for y in position.y ..< position.y + 3 {
                    result += board[y][position.x ..< position.x + 3]
                }
                return result
            },
        ]
        
        for groupGetter in groupGetters.values {
            for i in 0 ..< 9 {
                let group = groupGetter(i)
                var memory: Set<Character> = []
                for unit in group {
                    guard unit != "." else { continue }
                    guard memory.insert(unit).inserted else { return false }    // failing to insert means the pre-existance
                }
            }
        }
        
        return true
    }
}
