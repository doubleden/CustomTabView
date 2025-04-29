//
//  CustomTabBarModifier.swift
//  CustomTabView
//
//  Created by Denis Denisov on 29/4/25.
//

import SwiftUI

extension View {
    func customTabBar() -> some View {
        self.modifier(CustomTabBarModifier())
    }
}

// Custom tab bar view
struct CustomTabBarModifier: ViewModifier {
    @EnvironmentObject var tabCoordinator: TabCoordinator

    func body(content: Content) -> some View {
        ZStack {
            content
            
            VStack {
                Spacer()
                HStack {
                    ForEach(tabCoordinator.tabItems, id: \.self) { tabView in
                        Button {
                            withAnimation {
                                tabCoordinator.resolve(view: tabView)
                            }
                        } label: {
                            VStack(spacing: 4) {
                                tabView.image
                                Text(tabView.title)
                                    .font(.system(size: 9, weight: .semibold))
                            }
                            .foregroundColor(tabView.id == tabCoordinator.currentView.id ? Color.black : Color.gray)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 8)
                        }
                    }
                }
                .background(
                    LinearGradient(
                        colors: [.red, .purple, .yellow],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal)
            }
        }
    }
}
