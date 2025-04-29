//
//  RootView.swift
//  CustomTabView
//
//  Created by Denis Denisov on 29/4/25.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var tabCoordinator: TabCoordinator
    
    private var view: AnyView {
        switch tabCoordinator.currentView {
        case .firstTabView:
            AnyView(FirstView().customTabBar())
        case .secondTabView:
            AnyView(SecondView().customTabBar())
        case .thirdTabView:
            AnyView(ThirdView().customTabBar())
        }
    }
    var body: some View {
        NavigationView {
            ZStack {
                view
            }
        }
    }
}

#Preview {
    RootView()
        .environmentObject(TabCoordinator())
}
