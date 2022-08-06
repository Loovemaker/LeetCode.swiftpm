import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_twoSum() {
        typealias Element = Int
        typealias Input = (nums: [Element], target: Element)
        typealias Output = [Element]

        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (([2, 7, 11, 15], 9), [0, 1])
            (([3, 2, 4], 6), [1, 2])
            (([3, 3], 6), [0, 1])
        }

        casePairs.xctAssertEqual {
            solution.twoSum($0.nums, $0.target)
        }
    }
}
