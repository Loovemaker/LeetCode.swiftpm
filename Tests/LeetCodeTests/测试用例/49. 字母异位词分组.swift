import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_groupAnagrams() {
        typealias Element = String
        typealias Input = Set<Element>
        typealias Output = Set<Set<Element>>
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (
                ["eat", "tea", "tan", "ate", "nat", "bat"],
                [["bat"],["nat","tan"],["ate","eat","tea"]]
            )
            ([""], [[""]])
            (["a"], [["a"]])
        }
        
        casePairs.xctAssertEqual {
            solution.groupAnagrams($0.asArray)
                .map { $0.asSet }
                .asSet
        }
    }
}

