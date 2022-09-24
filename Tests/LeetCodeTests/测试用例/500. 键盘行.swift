import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_findWords() {
        typealias Element = String
        typealias Input = Set<Element>
        typealias Output = Set<Element>
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (["Hello","Alaska","Dad","Peace"], ["Alaska","Dad"])
            (["omk"], [])
            (["adsdf","sfd"], ["adsdf","sfd"])
        }
        
        casePairs.xctAssertEqual {
            solution.findWords($0.asArray)
                .asSet
        }
    }
}

