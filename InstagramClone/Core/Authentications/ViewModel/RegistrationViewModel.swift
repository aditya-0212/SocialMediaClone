//
//  RegistrationViewModel.swift
//  InstagramClone
//
//  Created by APPLE on 23/05/24.
//

import Foundation

class RegistrationViewModel:ObservableObject{
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}


//In SwiftUI, ObservableObject is a protocol that you use to create data models that can be observed by SwiftUI views. When properties in an ObservableObject change, the views that depend on those properties are automatically updated.
