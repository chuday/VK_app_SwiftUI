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
            AvatarImage { KFImage(URL(string: friend.photo100!)!) }
            
            Text("\(friend.firstName) \(friend.lastName)")
                .modifier(TitleText())
            
            Spacer()
        }.padding()
    }
}
