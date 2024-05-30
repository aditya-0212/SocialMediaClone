//
//  ContentView.swift
//  InstagramClone
//
//  Created by APPLE on 30/04/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    @StateObject var registrationViewModel = RegistrationViewModel()
    var body: some View {
        Group{
            if viewModel.userSession == nil{
                LoginView()
                    .environmentObject(registrationViewModel)
            } else{
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}

//In SwiftUI, .environmentObject(_:) is a modifier used to inject an instance of an observable object into the environment of a view hierarchy. This allows any child view within that hierarchy to access and observe the object without needing to pass it explicitly through initializer parameters. This is particularly useful for sharing state and logic across many views in a SwiftUI application.


