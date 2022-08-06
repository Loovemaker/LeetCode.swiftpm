import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isValidSudoku() {
        typealias Input = [[Character]]
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            [
                ["5","3",".",".","7",".",".",".","."],
                ["6",".",".","1","9","5",".",".","."],
                [".","9","8",".",".",".",".","6","."],
                ["8",".",".",".","6",".",".",".","3"],
                ["4",".",".","8",".","3",".",".","1"],
                ["7",".",".",".","2",".",".",".","6"],
                [".","6",".",".",".",".","2","8","."],
                [".",".",".","4","1","9",".",".","5"],
                [".",".",".",".","8",".",".","7","9"],
            ]
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            [
                ["8","3",".",".","7",".",".",".","."],
                ["6",".",".","1","9","5",".",".","."],
                [".","9","8",".",".",".",".","6","."],
                ["8",".",".",".","6",".",".",".","3"],
                ["4",".",".","8",".","3",".",".","1"],
                ["7",".",".",".","2",".",".",".","6"],
                [".","6",".",".",".",".","2","8","."],
                [".",".",".","4","1","9",".",".","5"],
                [".",".",".",".","8",".",".","7","9"],
            ]
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isValidSudoku)
    }
}
