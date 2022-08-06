import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isSameTree() {
        typealias Input = (TreeNode?, TreeNode?)
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            (.init(2, .init(1), .init(3)), .init(2, .init(1), .init(3)))
        }
        
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            (.init(1, .init(2), nil), .init(1, nil, .init(2)))
            (.init(1, .init(2), .init(1)), .init(1, .init(1), .init(2)))
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isSameTree)
    }
}

