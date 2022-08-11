extension Array where Element == Array<Int> {
    subscript(x: Int, y: Int) -> Int {
        get { self[y][x] }
        set { self[y][x] = newValue }
    }
}
