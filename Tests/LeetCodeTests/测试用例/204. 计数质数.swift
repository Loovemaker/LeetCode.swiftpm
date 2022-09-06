import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_countPrimes() {
        typealias Input = Int
        typealias Output = Int
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (10, 4)
            (100, 25)
            (1000, 168)
            (10000, 1229)
            (100000, 9592)
        }
        
        casePairs.xctAssertEqual(in: solution.countPrimes)
        
        self.measure { let _ = solution.countPrimes(999983) }
    }
}

