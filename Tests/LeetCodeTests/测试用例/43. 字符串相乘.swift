import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_multiply() {
        typealias Element = String
        typealias Input = (Element, Element)
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (("2", "3"), "6")
            (("123", "456"), "56088")
        }
        
        casePairs.xctAssertEqual(in: solution.multiply)
    }
}

