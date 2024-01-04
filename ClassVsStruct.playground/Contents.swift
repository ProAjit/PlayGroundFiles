//: A UIKit based Playground for presenting user interface
  

import Foundation

//Class and Struct difference

class Employee {
    var name : String = ""
    init(name: String) {
        self.name = name
    }
}

let emp1 = Employee(name: "Ajit")
var emp2 = emp1

print("emp1 = \(emp1.name)")
print("emp2 = \(emp2.name)")

emp2.name = "Yogesh"

print("emp1 = \(emp1.name)")
print("emp2 = \(emp2.name)")

/* Struct o/p 
 : Create ceparate Copy in a Memory
 emp1 = Optional("Ajit")
 emp2 = Optional("Ajit")
 emp1 = Optional("Ajit")
 emp2 = Optional("Yogesh")
 */

/* Class o/p 
 : Create no copy in a Separate Memory, its reference
 emp1 = Optional("Ajit")
 emp2 = Optional("Ajit")
 emp1 = Optional("Yogesh")
 emp2 = Optional("Yogesh")
 */
