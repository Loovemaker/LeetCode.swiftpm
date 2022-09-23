import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_reverseBits() {
        typealias Element = Int
        typealias Input = Element
        typealias Output = Element
        
        @CPBuilder<Input, Output> var casePairs: [CasePair<Input, Output>] {
            (0b00000010100101000001111010011100, 0b00111001011110000010100101000000)
            (0b11111111111111111111111111111101, 0b10111111111111111111111111111111)
        }
        
        casePairs.xctAssertEqual(in: solution.reverseBits)
    }
}

