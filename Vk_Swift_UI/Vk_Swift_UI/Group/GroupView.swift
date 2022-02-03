//
//  GroupView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 11.12.2021.
//

import SwiftUI

struct GroupView: View {
    
    let groupArray = [
        Group(name: "Group name is one", icon: "groupVK"),
        Group(name: "Group name is two", icon: "groupVK"),
        Group(name: "Group name is three", icon: "groupVK"),
        Group(name: "Group name is four", icon: "groupVK"),
        Group(name: "Group name is five", icon: "groupVK")
    ]
        
    var body: some View {
        List(groupArray, rowContent: { group in
            GroupList(group: group)
        })
    }
}



