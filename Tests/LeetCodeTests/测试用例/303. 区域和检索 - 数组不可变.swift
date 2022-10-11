import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_NumArray() {
        let numArray = Solution.NumArray([-2, 0, 3, -5, 2, -1])
        
        XCTAssertEqual(numArray.sumRange(0, 2), 1)
        XCTAssertEqual(numArray.sumRange(2, 5), -1)
        XCTAssertEqual(numArray.sumRange(0, 5), -3)
    }
}

