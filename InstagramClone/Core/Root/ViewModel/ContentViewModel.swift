//
//  ContentViewModel.swift
//  InstagramClone
//
//  Created by APPLE on 23/05/24.
//

import Foundation
import Firebase
//Combine: This framework provides a declarative Swift API for processing values over time. It allows you to set up reactive programming in your application.

import Combine

class ContentViewModel:ObservableObject {
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        setupSubscribers()
    }
    
    func setupSubscribers(){
        service.$userSession.sink{[weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
    }
}


//class ContentViewModel: ObservableObject: This class conforms to the ObservableObject protocol, which means it can be observed by SwiftUI views. When properties marked with @Published change, SwiftUI views that observe this object will automatically update.

//private let service: This is a reference to a shared instance of AuthService, which is assumed to handle Firebase authentication and publish changes to the user session. It is marked as private to restrict its access to within the ContentViewModel class.

//private var cancellables: This is a set that holds AnyCancellable objects, which manage the lifecycle of Combine subscriptions. When the ContentViewModel instance is deallocated, the cancellables set will automatically cancel all subscriptions it holds.

//func setupSubscribers(): This method sets up a subscription to observe changes to the userSession property of the AuthService instance.

//service.$userSession: This accesses the userSession property of AuthService as a Combine publisher. The $ prefix is automatically generated for properties marked with @Published, providing a publisher that emits values whenever the property changes.

//sink { [weak self] userSession in ... }: The sink operator attaches a subscriber to the publisher. It takes a closure that is executed whenever the publisher emits a new value.

//[weak self]: This captures self weakly to avoid retain cycles, ensuring that ContentViewModel can be deallocated if no longer needed.
//self?.userSession = userSession: This updates the userSession property of ContentViewModel with the new value emitted by the publisher.
//.store(in: &cancellables): This stores the subscription in the cancellables set. This ensures that the subscription is kept alive as long as the ContentViewModel instance exists. When cancellables is deallocated, all subscriptions in the set are cancelled.
