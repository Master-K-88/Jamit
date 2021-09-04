//
//  ViewModel.swift
//  JamitInterview
//
//  Created by Prof K on 9/3/21.
//

import Foundation

class ViewModel {
    
    var login:((String) -> Void)?
    
    func login(with email: String?, and password: String?) {
        if email == "Jamit" && password == "Password1234" {
            loginConfirmed()
        } else {
            print("Unable to login in")
        }
    }
    
    func loginConfirmed() {
        DispatchQueue.main.async {
            self.login?("Welcome to Jamit")
        }
    }
}
