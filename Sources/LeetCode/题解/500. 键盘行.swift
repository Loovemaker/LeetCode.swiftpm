public extension Solution {
    
    /// <doc:500.---->
    ///
    /// - ⌛️：85%
    /// - 🫙：57%
    func findWords(_ words: [String]) -> [String] {
        words.filter {
            let lines = $0
                .map { USKeyboardLine(key: $0) }
                .elementCount.keys
            
            return lines.count == 1
                && [USKeyboardLine.upper, .midst, .lower].contains(lines.first)
        }
    }
}

fileprivate enum USKeyboardLine: CaseIterable {
    case nums, upper, midst, lower, spacebar
    
    var keys: String {
        switch self {
        case .nums:     return "`1234567890-=~!@#$%^&*()_+"
        case .upper:    return "\tqwertyuiopQWERTYUIOP[]\\{}|"
        case .midst:    return #"asdfghjklASDFGHJKL;':""#
        case .lower:    return "zxcvbnmZXCVBNM,./<>?"
        case .spacebar: return " "
        }
    }
    
    init?(key: Character) {
        switch key {
        case let value where Self.nums.keys.contains(value): self = .nums
        case let value where Self.upper.keys.contains(value): self = .upper
        case let value where Self.midst.keys.contains(value): self = .midst
        case let value where Self.lower.keys.contains(value): self = .lower
        case let value where Self.spacebar.keys.contains(value): self = .spacebar
        default: return nil
        }
    }
}
