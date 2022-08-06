import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isUgly() {
        typealias Input = Int
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            6
            1
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            14
            0
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isUgly)
    }
}

