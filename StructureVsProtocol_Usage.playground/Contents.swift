import UIKit

//************************************** Protocol Oriented Approach***************************************//

// Abstraction
protocol ProtocolA {
    var sqrValue: Int { get }
}

// Object
class ClassA {
    let value: Int
    init(value: Int) {
        self.value = value
    }
}

// Realization
extension ClassA: ProtocolA {
    var sqrValue: Int {
        value * value
    }
}

let obj = ClassA(value: 5)
print("\(obj.sqrValue)")

//************************************* Structure Oriented Approach ****************************************//

// Abstraction
struct RegularStruct<T> {
    var sqrValue: (T) -> Int
    init(sqrValue: @escaping (T) -> Int) {
        self.sqrValue = sqrValue
    }
}

// Object
class RegularClass {
    let value: Int
    init(value: Int) {
        self.value = value
    }
}

// Realization
extension RegularStruct where T == RegularClass {
    init() {
        sqrValue = { object in object.value * object.value }
    }
}

let onbject = RegularStruct<RegularClass>()
print(onbject.sqrValue(.init(value: 6)))

//*****************************************************************************//

//Performance of Structure Oriented Programming is 75% faster compare to Protocol oriented

//https://itnext.io/structure-oriented-programming-vs-protocol-oriented-programming-in-swift-023970d80c75
