//
//  ContentView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 11.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shouldShowGroupView: Bool = false
    
    @ObservedObject var session = Session.instance
    
    var body: some View {
        NavigationView {
            HStack {
                VKLoginWebView()
                NavigationLink(destination: MainTabView(),
                               isActive: $session.isAuthorized) {
                    EmptyView()
                }
            }
        }
    }

}

