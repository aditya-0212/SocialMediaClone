//
//  AuthService.swift
//  InstagramClone
//
//  Created by APPLE on 23/05/24.
//

//import Foundation: This imports the Foundation framework, providing essential data types, collections, and operating-system services.
//import FirebaseAuth: This imports Firebase Authentication, which is used to handle user authentication.
import Foundation
import FirebaseAuth
import FirebaseFirestoreSwift
import Firebase
//This Swift code defines an AuthService class responsible for managing user authentication using Firebase Authentication
class AuthService{
    
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail email: String, password: String) async throws{
        do{
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }
        catch{
            print("DEBUG: Failed to login with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(email: String, password: String, username: String) async throws{
        do{
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: did create user")
            await uploadUserData(uid: result.user.uid, username: username, email: email)
            print("DEBUG: Did upload your user data")
        }
        catch{
            print("DEBUG: Failed to register user with error \(error.localizedDescription)")
        }
        
//        Auth.auth().createUser(withEmail:email, password: password){result, error in
//
//        }
        
    }
    
    func loadUserData() async throws{
        
    }
    
    func signOut(){
        try?Auth.auth().signOut()
        self.userSession = nil
    }
    
    private func uploadUserData(uid:String, username:String, email:String) async {
        let user = User(id:uid, username:username, email:email)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else {return}
        try? await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
        
    }
}


//@Published var userSession: This property is marked with the @Published attribute, which allows it to emit change notifications to any observers. It holds the currently authenticated Firebase user.

//static let shared: This creates a shared singleton instance of AuthService. This pattern ensures there is only one instance of AuthService used throughout the app, providing a centralized point for authentication management.

//init(): The initializer for AuthService. It initializes the userSession property with the current authenticated user, if there is one, by accessing Auth.auth().currentUser.
