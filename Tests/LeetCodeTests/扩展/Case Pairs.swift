import XCTest
import LeetCode

/// 输入输出一对用例
struct CasePair<Input, Output>: CanExecute
where Output: Equatable {
    /// 输入
    public let input: Input
    /// 输出
    public let output: Output
    
    /// 使用算法执行
    /// - Parameter algorithm: 算法
    func put(into algorithm: (Input) -> Output)
    -> (expected: Output, actual: Output) {
        (output, algorithm(input))
    }
}

extension Collection where Element: CanExecute {
    /// 输入类型
    typealias Input = Element.Input
    /// 输出类型
    typealias Output = Element.Output
    
    /// 判断算法是否满足所有输入输出
    /// - Parameter algorithm: 算法
    func xctAssertEqual(in algorithm: (Input) -> Output) {
        for element in self {
            let results = element.put(into: algorithm)
            XCTAssertEqual(results.expected, results.actual)
        }
    }
}

extension Collection where Element: CanExecute, Element.Output: Numeric {
    /// 判断算法是否在误差范围内满足所有输入输出
    /// - Parameter accuracy: 误差范围
    /// - Parameter algorithm: 算法
    func xctAssertEqual(accuracy: Element.Output = 0,
                        in algorithm: (Input) -> Output) {
        for element in self {
            let results = element.put(into: algorithm)
            XCTAssertEqual(results.expected, results.actual, accuracy: accuracy)
        }
    }
}
extension Collection where Element: CanExecute, Element.Output: FloatingPoint {
    /// 判断算法是否在误差范围内满足所有输入输出
    /// - Parameter accuracy: 误差范围
    /// - Parameter algorithm: 算法
    func xctAssertEqual(accuracy: Element.Output = 1e-6 as! Self.Element.Output,
                        in algorithm: (Input) -> Output) {
        for element in self {
            let results = element.put(into: algorithm)
            XCTAssertEqual(results.expected, results.actual, accuracy: accuracy)
        }
    }
}


@resultBuilder
/// 输入输出一对用例的构造器
struct CPBuilder<Input, Output> where Output: Equatable {
    public typealias Component = [CasePair<Input, Output>]
    public typealias Expression = (input: Input, output: Output)
    public static func buildExpression(_ element: Expression) -> Component {
        return [.init(input: element.input, output: element.output)]
    }
    public static func buildOptional(_ component: Component?) -> Component {
        guard let component = component else { return [] }
        return component
    }
    public static func buildEither(first component: Component) -> Component {
        return component
    }
    public static func buildEither(second component: Component) -> Component {
        return component
    }
    public static func buildArray(_ components: [Component]) -> Component {
        return Array(components.joined())
    }
    public static func buildBlock(_ components: Component...) -> Component {
        return Array(components.joined())
    }
}

@resultBuilder
/// 一对输出`true`的用例的构造器
struct TrueCPBuilder<Element> {
    public typealias Component = [CasePair<Element, Bool>]
    public typealias Expression = Element
    
    public static func buildExpression(_ element: Expression) -> Component {
        return [.init(input: element, output: true)]
    }
    public static func buildOptional(_ component: Component?) -> Component {
        guard let component = component else { return [] }
        return component
    }
    public static func buildEither(first component: Component) -> Component {
        return component
    }
    public static func buildEither(second component: Component) -> Component {
        return component
    }
    public static func buildArray(_ components: [Component]) -> Component {
        return Array(components.joined())
    }
    public static func buildBlock(_ components: Component...) -> Component {
        return Array(components.joined())
    }
}

@resultBuilder
/// 一对输出`false`的用例的构造器
struct FalseCPBuilder<Element> {
    public typealias Component = [CasePair<Element, Bool>]
    public typealias Expression = Element
    
    public static func buildExpression(_ element: Expression) -> Component {
        return [.init(input: element, output: false)]
    }
    public static func buildOptional(_ component: Component?) -> Component {
        guard let component = component else { return [] }
        return component
    }
    public static func buildEither(first component: Component) -> Component {
        return component
    }
    public static func buildEither(second component: Component) -> Component {
        return component
    }
    public static func buildArray(_ components: [Component]) -> Component {
        return Array(components.joined())
    }
    public static func buildBlock(_ components: Component...) -> Component {
        return Array(components.joined())
    }
}

/// 可以执行
protocol CanExecute: HasInputOutput {
    func put(into algorithm: (Input) -> Output)
    -> (expected: Output, actual: Output)
}

/// 拥有输入与输出
protocol HasInputOutput {
    associatedtype Input
    associatedtype Output: Equatable
    var input: Input { get }
    var output: Output { get }
}
