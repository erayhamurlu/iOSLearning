//
//  SwiftLearningApp.swift
//  SwiftLearning
//
//  Created by Eray hamurlu on 22.06.2024.
//

import SwiftUI
import Firebase
import UserNotifications

@main
struct iOSLearningApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            UserDefaultsExample()
        }
    }
}
