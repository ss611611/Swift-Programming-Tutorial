import Foundation

enum Animals {
    case cat
    case dog
    case rabbit
    case hedgeHog
}

let cat = Animals.cat
cat

if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog {
    "This is a dog"
} else {
    "This is something else"
}

switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
case .hedgeHog:
    "This is a hedgeHog"
}

enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
    
case .fileOrFolder(
    let path,
    let name
):
    path
    name
    break
case .wwwUrl(let path):
    path
    break
case .song(
    let artist,
    let songName
):
    artist
    songName
    break
}

switch wwwApple {
    
case let .fileOrFolder(
    path,
    name
):
    path
    name
    break
case let .wwwUrl(path):
    path
    break
case let .song(
    artist,
    songName
):
    artist
    songName
    break
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "Without You")

if case let .song(_, songName) = withoutYou {
    songName
}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
         let .bike(manufacturer, _):
           return manufacturer
        }
    }
}



let car = Vehicle.car(
    manufacturer: "Tesla",
    model: "X"
)
car.manufacturer

let bike = Vehicle.bike(
    manufacturer: "HD",
    yearMade: 1987
)
bike.manufacturer

enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue

enum FavoriteEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)

if let blush = FavoriteEmoji(rawValue: "😊") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesn't exist"
}

if let snow = FavoriteEmoji(rawValue: "❅") {
    "Snow exists?! Really?"
    snow
} else {
    "As expected, sonw doesn't exist in our enum"
}

enum Height {
    case short, medium, long
    mutating func makelong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makelong()
myHeight

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freehand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
        case let .add(lhs, rhs):
            return lhs + rhs
        case let .subtract(lhs, rhs):
            return lhs - rhs
        case let .freehand(operation):
            return calculateResult(of: operation)
        }
    }
}

let freeHand = IntOperation.freehand(.add(2, 4))
freeHand.calculateResult()
