//
//  FriendView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 11.12.2021.
//

import SwiftUI

struct FriendView: View {
    
    let friensArray = [
        Friend(firstName: "Anton", lastName: "Antonov", icon: "friendVK"),
        Friend(firstName: "Brus", lastName: "Li", icon: "friendVK"),
        Friend(firstName: "Ivan", lastName: "Ivanov", icon: "friendVK"),
        Friend(firstName: "Dmitry", lastName: "Dmitriv", icon: "friendVK"),
        Friend(firstName: "Erzan", lastName: "Erzanov", icon: "friendVK"),
        Friend(firstName: "Fill", lastName: "Mode", icon: "friendVK"),

    ]
        
    var body: some View {
        
        List(friensArray, rowContent: { friend in
            
            NavigationLink(destination: FriendList(friend: friend)) {
            FriendList(friend: friend)
                
            }
        })
    }
}

