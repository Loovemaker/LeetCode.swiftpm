import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_MyQueue() {
        let myQueue = Solution.MyQueue()
        
        myQueue.push(1)
        myQueue.push(2)
        XCTAssertEqual(myQueue.peek(), 1)
        XCTAssertEqual(myQueue.pop(), 1)
        XCTAssertFalse(myQueue.empty())
    }
}

