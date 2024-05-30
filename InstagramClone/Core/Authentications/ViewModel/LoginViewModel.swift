//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by APPLE on 24/05/24.
//

import Foundation

class LoginViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
      try await AuthService.shared.login(withEmail: email, password: password)
    }
}
