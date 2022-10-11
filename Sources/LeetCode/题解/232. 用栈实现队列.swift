public extension Solution {
    
    /// <doc:232.------->
    ///
    /// - ⌛️：46%
    /// - 🫙：51%
    class MyQueue {
        
        private typealias Element = Int
        
        private var stacks: (in: [Element], out: [Element]) = ([], [])
        
        func push(_ x: Int) {
            stacks.in.append(x)
        }
        
        func pop() -> Int {
            if stacks.out.isEmpty {
                while let element = stacks.in.popLast() { stacks.out.append(element) }
            }
            return stacks.out.popLast()!
        }
        
        func peek() -> Int {
            stacks.out.isEmpty ? stacks.in.first! : stacks.out.last!
        }
        
        func empty() -> Bool {
            stacks.in.isEmpty && stacks.out.isEmpty
        }
        
    }
}
