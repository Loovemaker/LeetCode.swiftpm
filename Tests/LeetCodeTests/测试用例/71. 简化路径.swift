import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_simplifyPath() {
        typealias Input = String
        typealias Output = String
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("/home/", "/home")
            ("/../", "/")
            ("/home//foo/", "/home/foo")
        }
        
        casePairs.xctAssertEqual(in: solution.simplifyPath)
    }
}

