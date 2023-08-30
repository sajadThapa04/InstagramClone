//
//  BlockSApp.swift
//  BlockS
//
//  Created by Sajad Thapa on 25/8/2023.
//

import SwiftUI




import FirebaseCore


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}
@main
struct BlockSApp: App {
    
       // MARK: - Life Cycle
       init() {
           FirebaseApp.configure()
       }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
