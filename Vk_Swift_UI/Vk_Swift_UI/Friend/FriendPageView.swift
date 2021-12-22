//
//  FriendPageView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 19.12.2021.
//

import SwiftUI
import Kingfisher

struct FriendPageView: View {
    var friend: FriendItem
    var body: some View {
        VStack {
            ImageFriendViewBuilder { KFImage(URL(string: friend.photo100!)!) }
            
            Spacer()
                .frame(height: 30.0)
            
            LikeButton()
            
            Spacer()
        }.padding()
    }
}
