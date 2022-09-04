import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_wordPattern() {
        typealias Input = (String, String)
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            ("abba", "dog cat cat dog")
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            ("abba", "dog cat cat fish")
            ("aaaa", "dog cat cat dog")
            ("abba", "dog dog dog dog")
            ("aaa", "aa aa aa aa")
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.wordPattern)
    }
}

