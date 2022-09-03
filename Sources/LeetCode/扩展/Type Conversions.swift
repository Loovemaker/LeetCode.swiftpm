extension Sequence where Element: Hashable {
    var asSet: Set<Element> {
        Set(self)
    }
}

extension Sequence {
    var asArray: Array<Element> {
        Array(self)
    }
}
