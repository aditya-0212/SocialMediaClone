//
//  InstagramCloneApp.swift
//  InstagramClone
//
//  Created by APPLE on 30/04/24.
//

import SwiftUI

//import FirebaseCore: This imports the core Firebase library, which is necessary to configure Firebase in the application.
import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct InstagramCloneApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
       ContentView()
        }
    }
}


//class AppDelegate: NSObject, UIApplicationDelegate: This defines a class AppDelegate that conforms to the UIApplicationDelegate protocol. The AppDelegate class is responsible for handling application-level events.

//func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool: This is a lifecycle method of the UIApplicationDelegate protocol. It is called when the app has finished launching. The launchOptions parameter provides information about why the app was launched.

//FirebaseApp.configure(): This line initializes and configures the Firebase services when the app launches.

//return true: This indicates that the app has successfully finished launching.


//@main: This attribute identifies the entry point of the app.
//struct InstagramCloneApp: App: This defines the main structure of the SwiftUI app. InstagramCloneApp conforms to the App protocol, which represents the structure and behavior of the app.

//@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate: This property wrapper links the AppDelegate class to the SwiftUI app, allowing the app to use the delegate for handling app lifecycle events.

//var body: some Scene: This property defines the content and behavior of the app’s UI. In SwiftUI, a Scene represents a part of the app’s user interface.

//WindowGroup { ContentView() }: This creates a window group for the app's main UI. A WindowGroup can contain multiple windows, and it serves as a container for the app's scenes. Here, it contains ContentView, which is the root view of the app’s user interface.
