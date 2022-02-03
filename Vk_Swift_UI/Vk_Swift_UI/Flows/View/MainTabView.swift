//
//  MainTabView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 19.12.2021.
//

import SwiftUI

struct MainTabView: View {
    
    var body: some View {
        TabView {
            
            FriendsView(viewModel: FriendViewModel(FriendAPI()))
                .navigationBarTitle("", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Friends")
                }
            
            GroupsView(viewModel: GroupViewModel(GroupAPI()))
                .navigationBarTitle("", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Groups")
                }
            
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
        }.navigationBarBackButtonHidden(true)
    }
}

