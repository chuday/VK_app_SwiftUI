//
//  FriendsView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 15.12.2021.
//

import SwiftUI

struct FriendsView: View {
    @ObservedObject var viewModel: FriendViewModel
    
    init(viewModel: FriendViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.friends) { friend in
            NavigationLink(destination: FriendPageView(friend: friend)) {
                FriendRowView(friend: friend)
            }
        }
        .modifier(PlainList())
        .onAppear { viewModel.fetch() }
    }
}
