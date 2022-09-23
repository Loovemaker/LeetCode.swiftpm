import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_validUtf8() {
        typealias Input = [Int]
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            [197, 130, 1]
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            [235, 140, 4]
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.validUtf8)
    }
}

