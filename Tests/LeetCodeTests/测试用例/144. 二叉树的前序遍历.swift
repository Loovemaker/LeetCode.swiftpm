import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_preorderTraversal() {
        typealias Input = TreeNode?
        typealias Output = [Int]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (.init(1, nil, .init(2, .init(3), nil)), [1, 2, 3])
            (nil, [])
            (.init(1), [1])
            (.init(1, nil, .init(2)), [1, 2])
        }
        
        casePairs.xctAssertEqual(in: solution.preorderTraversal)
    }
}

