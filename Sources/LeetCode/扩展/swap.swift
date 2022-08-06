/// 交换两个值
/// - Parameters:
///   - a: 一个值
///   - b: 另一个值
func swap<T>(_ a: inout T, _ b: inout T) {
    let t = a
    a = b
    b = t
}
