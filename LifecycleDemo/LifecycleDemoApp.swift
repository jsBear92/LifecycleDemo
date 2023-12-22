//
//  LifecycleDemoApp.swift
//  LifecycleDemo
//
//  Created by Jaeseong Jeong on 22/12/2023.
//

import SwiftUI

@main
struct LifecycleDemoApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase, {
            switch scenePhase {
            case .active:
                print("Active")
            case .inactive:
                print("Inactive")
            case .background:
                print("Background")
            default:
                print("Unknown scenephase")
            }
        })
    }
}
