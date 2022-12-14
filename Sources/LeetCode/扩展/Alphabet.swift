extension Character {
    /// ASCII范围内的字母顺序，A-Z或a-z对应1-26
    var asciiAlphabetValue: Int? {
        guard self.isASCII else { return nil }
        switch self.asciiValue {
        case let value where (0x41...0x5a).contains(value ?? 0):
            return Int(value!) - 0x40
        case let value where (0x61...0x7a).contains(value ?? 0):
            return Int(value!) - 0x60
        default: return nil
        }
    }
}
