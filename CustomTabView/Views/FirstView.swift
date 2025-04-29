//
//  FirstView.swift
//  CustomTabView
//
//  Created by Denis Denisov on 29/4/25.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Text("FIRST VIEW")
            
            NavigationLink("Details") {
                FirstDetailView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.yellow)
    }
}

#Preview {
    FirstView()
}
