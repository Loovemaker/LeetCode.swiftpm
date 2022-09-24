import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isHappy() {
        typealias Input = Int
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            1
            7
            19
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            2
            3
            4
            5
            6
            8
            9
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isHappy)
    }
}

