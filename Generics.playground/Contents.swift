import Foundation

func perform<N: Numeric>(
    _ op: (N, N) -> N,
    on lhs:N,
    and rhs:N
) -> N {
    op(lhs,rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 20, and: 10)

func perform2<N>(
    _ op: (N, N) -> N,
    on lhs:N,
    and rhs:N
) -> N where N: Numeric {
    op(lhs,rhs)
}

perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 20, and: 10)

protocol CanJump {
    func jump()
}

protocol CanRun {
    func run()
}

struct Person: CanJump, CanRun {
    func jump() {
        "Jumping..."
    }
    func run() {
        "Running..."
    }
}

func jumpAndRun<T: CanJump & CanRun>(_ value: T) {
    value.jump()
    value.run()
}

let person = Person()
jumpAndRun(person)

extension [String] {
    func longestString() -> String? {
        self.sorted { (lhs: String, rhs: String) -> Bool in
            lhs.count > rhs.count
        }.first
    }
}

[
    "Foo",
    "Bar Baz",
    "Qux"
].longestString()

protocol View {
    func addSubView(_ view: View)
}

extension View {
    func addSubView(_ view: View) {
        // empty
    }
}

struct Button: View {
    // empty
}

struct Table: View {
    // empty
}

protocol PresentableAsView {
    associatedtype ViewType: View
    func produceView() -> ViewType
    func configure(
        superView: View,
        thisView: ViewType
    )
    func present(
        view: ViewType,
        on superView: View
    )
}

extension PresentableAsView {
    func configure(
        superView: View,
        thisView: ViewType
    ) {
        // empty by default
    }
    func present(
        view: ViewType,
        on superView: View
    ){
        superView.addSubView(view)
    }
}

struct MyButton: PresentableAsView {
    func produceView() -> Button {
        Button()
    }
    func configure(
        superView: View,
        thisView: Button
    ) {
        
    }
}

extension PresentableAsView where ViewType == Button {
    func doSomethingWithButton() {
        "This is a button"
    }
}

let button = MyButton()
button.doSomethingWithButton()

extension [Int] {
    func average() -> Double {
        Double(self.reduce(0, +)) / Double(self.count)
    }
}

[1, 2, 3, 4].average()
