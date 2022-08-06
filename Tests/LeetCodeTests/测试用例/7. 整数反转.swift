import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_reverse() {
        typealias Element = Int
        typealias Input = Element
        typealias Output = Element

        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (123,   321)
            (-123, -321)
            (10,    01)
            
            for _ in 0 ..< 100 {
                (Int(Int32.random(in: .min ... .max)) << 32, 0)
            }
        }
        
        casePairs.xctAssertEqual(in: solution.reverse)
    }
}
