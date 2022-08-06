import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_inorderTraversal() {
        typealias Element = Int
        typealias Input = TreeNode?
        typealias Output = [Element]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (nil, [])
            (.init(1), [1])
            (.init(1, .init(2), nil), [2, 1])
            (.init(1, nil, .init(2)), [1, 2])
            (.init(1, nil, .init(3, nil, .init(2))), [1, 3, 2])
        }
        
        casePairs.xctAssertEqual(in: solution.inorderTraversal)
    }
}

