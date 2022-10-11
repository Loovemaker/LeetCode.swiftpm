import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_reverseString() {
        typealias Element = Character
        typealias Input = [Character]
        typealias Output = [Character]
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (["h","e","l","l","o"], ["o","l","l","e","h"])
            (["H","a","n","n","a","h"], ["h","a","n","n","a","H"])
        }
        
        casePairs.xctAssertEqual {
            var data = $0
            solution.reverseString(&data)
            return data
        }
    }
}

