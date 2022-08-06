public extension Solution {
    
    /// <doc:38.----->
    ///
    /// - ⌛️：59%
    /// - 🫙：50%
    func countAndSay(_ n: Int) -> String {
        precondition(n > 0)
        
        if n < cache.count {
            return cache[n]
        }
        
        var result = cache.last!
        for _ in cache.count ... n {
            var newResult = ""
            var memory: Memory = (0, nil)
            for char in result {
                if let mchar = memory.char, char != mchar {
                    newResult.append(Character(String(memory.count)))
                    newResult.append(Character(String(mchar.hexDigitValue!)))
                    memory = (0, nil)
                }
                memory.count += 1
                memory.char = char
                
            }
            
            clearMemory(char: nil, memory: &memory, result: &newResult)
            
            result = newResult
        }
        
        return result
    }
}

fileprivate let cache = ["", "1", "11", "21", "1211", "111221"]

fileprivate typealias Memory = (count: Int, char: Character?)

fileprivate func clearMemory(char: Character?,
                             memory: inout Memory,
                             result: inout String
) {
    if let mchar = memory.char, char != mchar {
        result.append(Character(String(memory.count)))
        result.append(Character(String(mchar.hexDigitValue!)))
        memory = (0, nil)
    }
}
