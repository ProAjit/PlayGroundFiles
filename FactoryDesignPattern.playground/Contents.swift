import UIKit

//In class-based programming, the factory method pattern is a creational pattern
//that uses factory methods to deal with the problem of creating direct objects
//without having to specify the exact class of the object that will be created.

//******************************************************************//
protocol FactoryProtocol {
    func createBaseURL() -> String
}

class Production: FactoryProtocol {
    func createBaseURL() -> String {
        return "https://prod.com"
    }
}

class Development: FactoryProtocol {
    func createBaseURL() -> String {
        return "https://dev.com"
    }
}

//******************************************************************//
//MARK: FACTORY

enum Enviornment {
    case production
    case development
}

protocol URLFactoryProtocol {
    func create() -> String?
}

struct URLFactory: URLFactoryProtocol {
    
    var env: Enviornment
    init(env: Enviornment) {
        self.env = env
    }
    
    func create() -> String? {
        switch self.env {
        case .production:
            return Production().createBaseURL()
        case .development:
            return Development().createBaseURL()
        }
    }
}
//******************************************************************//

let urlFactory = URLFactory(env: .production)
print(urlFactory.create()!)
