extension Sequence where Element: Hashable {
    var elementCount: [Element: Int] {
        var result: [Element: Int] = [:]
        for e in self {
            result[e] = (result[e] ?? 0) + 1
        }
        return result
    }
}
