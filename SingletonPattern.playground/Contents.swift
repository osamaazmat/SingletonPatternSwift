/*
 When the user requires to create a shareable recourse that can be used
 throughout the code, Singleton Design Pattern comes into play.
 
 It solves alot of problems, some are:
 
 -  For providing a global point of access for data and funcionality
 -  It Reduces the memory footprint of the app as only one instance is
    available in the memory.
 
 A common example could be a UserManager singleton which is used to
 provide basic information throughout the code.
 
 Important points to be noted:
 
 -  We keep the Singleton class as Final so it cant be extended. Thus
    it also provides us with Static Dispatch thus is very efficient
 -  We keep the initializer private so the Singleton cannot be instantiated
    from outside the Singleton, thus ensuring that only one instance is
    available throughout
 
 */


// MARK: - User Singleton

final class UserManager {
    
    var userName: String    = ""
    var email: String       = ""
    var phoneNumber: String = ""
    
    static let shared = UserManager()
    
    private init() {
        
    }
    
    func getAllUserData() {
        print("UserName:    \(UserManager.shared.userName)")
        print("Email:       \(UserManager.shared.email)")
        print("PhoneNumber: \(UserManager.shared.phoneNumber)")
    }
}

class Login {
    
    init() {}
    
    func completeLogin() {
        UserManager.shared.userName     = "OsamaAzmatKhan"
        UserManager.shared.email        = "usama.azmat@hotmail.com"
        UserManager.shared.phoneNumber  = "+923361006654"
    }
}

class AccountInformation {
    
    init() {}
    
    func updateAccountInformation() {
        UserManager.shared.userName     = "OsamaKhan"
        UserManager.shared.email        = "osamaazmatkhan@gmail.com"
    }
}

let login = Login()
let accountInfo = AccountInformation()

// As we can see the Data is yet to be added
UserManager.shared.getAllUserData()

// Now we add the account information
login.completeLogin()

// As we can see the Data is added in the singleton
UserManager.shared.getAllUserData()

// Now we update the account information
accountInfo.updateAccountInformation()

// As we can see the Data is updated in the singleton
UserManager.shared.getAllUserData()
