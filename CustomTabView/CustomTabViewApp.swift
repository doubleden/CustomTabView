//
//  CustomTabViewApp.swift
//  CustomTabView
//
//  Created by Denis Denisov on 29/4/25.
//

import SwiftUI

@main
struct CustomTabViewApp: App {
    @StateObject private var tabCoordinator: TabCoordinator = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(tabCoordinator)
    }
}
