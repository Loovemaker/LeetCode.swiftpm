import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_postorderTraversal() {
        typealias Input = TreeNode?
        typealias Output = [Int]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (.init(1, nil, .init(2, .init(3), nil)), [3, 2, 1])
        }
        
        casePairs.xctAssertEqual(in: solution.postorderTraversal)
    }
}

