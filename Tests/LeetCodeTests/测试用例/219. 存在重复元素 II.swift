import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_containsNearbyDuplicate() {
        typealias Input = ([Int], Int)
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            ([1, 2, 3, 1], 3)
            ([1, 0, 1, 1], 1)
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            ([1, 2, 3, 1, 2, 3], 2)
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.containsNearbyDuplicate)
    }
}

