import XCTest
@testable import LeetCode

extension LeetCodeTests {
    
    func test_hasCycle() {
        typealias Input = ListNode?
        
        let list1 = ListNode(from: 1 ... 5)
        let list2 = ListNode(from: 1 ... 5)
        list2?.next?.next = list2?.next
        
        @TrueCPBuilder<Input> var trueCasePairs: [CasePair<Input, Bool>] {
            list2
        }
        @FalseCPBuilder<Input> var falseCasePairs: [CasePair<Input, Bool>] {
            list1
        }
        
        (trueCasePairs + falseCasePairs).xctAssertEqual(in: solution.hasCycle)
    }
}

