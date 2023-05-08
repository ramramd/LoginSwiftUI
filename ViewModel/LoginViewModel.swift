//
//  LoginViewModel.swift
//  LoginApp
//
//  Created by Naveen Ramachandrappa on 5/8/23.
//

import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    
   var userName: String = ""
   var password: String = ""
   @Published var isInvalidLogin: Bool = false
    
    func login() {
        if userName.isEmpty || password.isEmpty {
            isInvalidLogin = true
        }
        else {
            isInvalidLogin = false
        }
    }
}

