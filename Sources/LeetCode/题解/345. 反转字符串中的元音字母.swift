public extension Solution {
    
    /// <doc:345.------------>
    ///
    /// - ⌛️：97%
    /// - 🫙：13%
    func reverseVowels(_ s: String) -> String {
        var sArray = Array(s)
        let vowelIndices = sArray.indices { vowels.contains($0) }
        for i in 0 ..< vowelIndices.count / 2 {
            sArray.swapAt(vowelIndices[i], vowelIndices[vowelIndices.count - 1 - i])
        }
        return String(sArray)
    }
}

fileprivate let vowels: [Character] = [
    "a", "e", "i", "o", "u",
    "A", "E", "I", "O", "U",
]

