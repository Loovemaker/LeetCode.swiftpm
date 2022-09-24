import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_frequencySort_451() {
        typealias Input = String
        typealias Output = Dictionary<Character, Int>
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            ("tree", "eert".elementCount)
            ("cccaaa", "cccaaa".elementCount)
            ("Aabb", "bbAa".elementCount)
        }
        
        casePairs.xctAssertEqual { solution.frequencySort($0).elementCount }
    }
}

