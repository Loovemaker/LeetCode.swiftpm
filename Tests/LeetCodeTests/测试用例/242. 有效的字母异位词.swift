import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isAnagram() {
        typealias Input = (String, String)
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            ("anagram", "nagaram")
            ("💩👽💀", "👽💀💩")
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            ("rat", "car")
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isAnagram)
    }
}

