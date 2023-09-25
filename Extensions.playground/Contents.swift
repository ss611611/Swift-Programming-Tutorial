import Foundation

extension Int {
    func plusTwo() -> Int {
        self + 2
    }
}
let two = 2
two.plusTwo()

struct Person {
    let fristName: String
    let lastName: String
}

extension Person {
    init(fullName: String) {
        let components = fullName
            .components(separatedBy: " ")
        self.init(
            fristName: components.first ?? fullName,
            lastName: components.last ?? fullName
        )
    }
}

let person = Person(fullName: "Foo Bar")
person.fristName
person.lastName


protocol GoesVroom {
    var vroonValue: String { get }
    func goVroom() -> String
}

extension GoesVroom {
    func goVroom() -> String {
        "\(self.vroonValue) goes vroom"
    }
}

struct Car {
    let maufactuer: String
    let model: String
}

let modelX = Car(
    maufactuer: "Tesla",
    model: "X"
)

extension Car: GoesVroom {
    var vroonValue: String {
        "\(self.maufactuer) model \(self.model)"
    }
}

modelX.goVroom()

class MyDouble {
    let value: Double
    init(value: Double) {
        self.value = value
    }
}

extension MyDouble {
    convenience init() {
        self.init(value: 0)
    }
}
let myDouble = MyDouble()
myDouble.value

extension GoesVroom {
    func goVroomVroomEvenMore() -> String {
        "\(self.vroonValue) is vrooming even more!"
    }
}
modelX.goVroomVroomEvenMore()
