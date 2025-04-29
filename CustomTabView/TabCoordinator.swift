//
//  TabCoordinator.swift
//  CustomTabView
//
//  Created by Denis Denisov on 29/4/25.
//

import SwiftUI

enum TabViewCoordinator: CaseIterable {
    case firstTabView
    case secondTabView
    case thirdTabView
    
    var image: Image {
        switch self {
        case .firstTabView: Image(systemName: "1.circle")
        case .secondTabView: Image(systemName: "2.circle")
        case .thirdTabView: Image(systemName: "3.circle")
        }
    }

    var title: String {
        switch self {
        case .firstTabView: "screen 1"
        case .secondTabView: "screen 2"
        case .thirdTabView: "screen 3"
        }
    }
    
    var id: Int {
        switch self {
        case .firstTabView: 1
        case .secondTabView: 2
        case .thirdTabView: 3
        }
    }
}

final class TabCoordinator: ObservableObject {
    @Published var currentView: TabViewCoordinator = .firstTabView
    let tabItems = TabViewCoordinator.allCases
    
    func resolve(view: TabViewCoordinator) {
        switch view {
        case .firstTabView:
            currentView = .firstTabView
        case .secondTabView:
            currentView = .secondTabView
        case .thirdTabView:
            currentView = .thirdTabView
        }
    }
}
