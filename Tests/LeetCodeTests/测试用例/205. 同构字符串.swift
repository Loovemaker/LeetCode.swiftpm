import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_isIsomorphic() {
        typealias Input = (String, String)
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            ("egg", "add")
            ("paper", "title")
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            ("foo", "bar")
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.isIsomorphic)
    }
}

