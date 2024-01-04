import UIKit

//************************************* Dependancy Injection *************************************//
struct User {
    let id: Int?
    let name: String?
}

class LoginAPI {
    
    func authenticateUser(user: User) { }
    
    private func printName() { }
    
    func printID() { }
}

class LoginViewModel {
    private let loginAPI: LoginAPI //Dependancy
    init(loginAPI: LoginAPI) { //Added through constructor
        self.loginAPI = loginAPI
    }
    
    //Adv - Loose coupled, testable and reusable
    
    func authenticateUser(currentUser: User) {
        loginAPI.printID() //Disadv - It's breaking the abstraction
        loginAPI.authenticateUser(user: currentUser)
    }
}

//************************************* Dependancy Inversion *************************************//

struct Employee {
    let id: Int?
    let name: String?
}

protocol CompanyProtocol {
    func authenticateEmployee(employee: Employee)
}

class CompanyAPI: CompanyProtocol {
    func authenticateEmployee(employee: Employee) { }
    private func printName() { }
    func printID() { }
}

class CompanyViewModel {
    private let companyAPI: CompanyProtocol //Protocol Dependancy
    init(companyAPI: CompanyProtocol) { //Added through constructor
        self.companyAPI = companyAPI
    }
    
    func authenticateEmployee(currentEmployee: Employee) {
        companyAPI.authenticateEmployee(employee: currentEmployee) 
        //Gives access to only protocol declarations i.e. Proper Abstraction
    }
}

//*************************************************************************************************//
