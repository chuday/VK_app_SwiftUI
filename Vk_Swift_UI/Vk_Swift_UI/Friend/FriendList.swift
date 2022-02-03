//
//  FriendList.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 08.12.2021.
//

import SwiftUI

struct FriendList: View {
    
    let friend: Friend
    
    var body: some View {
        
        HStack {
            AvatarImage {
                Image("\(self.friend.icon ?? "vk")")
            }
            
            Text("\(friend.firstName)" + " " + "\(friend.lastName)")
        }
    }
}
