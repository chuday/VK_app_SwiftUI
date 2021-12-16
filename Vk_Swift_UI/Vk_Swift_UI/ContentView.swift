//
//  ContentView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 11.12.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shouldShowGroupView: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            HStack {
                LoginView(isUserLoggedIn: $shouldShowGroupView)
                
                NavigationLink(
                    destination:
                                TabView {
                                    
                    FriendView()
                        .tabItem {
                            Image(systemName: "person.circle")
                            Text("Friends")
                        }
                                    
                    GroupView()
                        .tabItem {
                            Image(systemName: "person.3")
                            Text("Groups")
                        }
                                    
                    NewsView()
                        .tabItem {
                            Image(systemName: "newspaper")
                            Text("News")
                        }
                                }
                    
                        .navigationBarBackButtonHidden(true),
                    isActive: $shouldShowGroupView,
                    label: {
                        EmptyView()
                    }
                )
            }
        }
    }
}

