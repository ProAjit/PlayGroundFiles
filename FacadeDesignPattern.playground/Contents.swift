import UIKit

//************************************************//

class A {
    var aVar : String = ""
    func funcOfClassA() { }
}

class B {
    var bVar : String = ""
    func funcOfClassB() { }
}

class C {
    var cVar : String = ""
    func funcOfClassC() { }
}

//************************************************//

protocol facadeProtocol {
    func funcOfClassA(Obj: A)
    func funcOfClassB(Obj: B)
    func funcOfClassC(Obj: C)
}

class facade {
    var aVar = A()
    var bVar = B()
    var cVar = C()
    weak var delegate : facadeProtocol

    init(aVar: A, bVar: B, cVar: C) {
        self.aVar = aVar
        self.bVar = bVar
        self.cVar =  cVar
    }
    
    func facadeLayerFunction() {
        self.delegate.funcOfClassA(Obj: self.aVar)
    }
    
}

//************************************************//

class actualClass  { }

extension actualClass : facadeProtocol {
    
    func funcOfClassA(Obj: A) { }
        
    func funcOfClassB(Obj: B) { }
    
    func funcOfClassC(Obj: C) { }
}

//************************************************//
