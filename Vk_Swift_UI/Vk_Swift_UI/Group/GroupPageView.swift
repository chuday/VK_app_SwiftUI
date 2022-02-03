//
//  Group.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 15.12.2021.
//

import SwiftUI
import Kingfisher

struct GroupPageView: View {
    var group: GroupItem
    var body: some View {
        
        ScrollView {
            AvatarImage { KFImage(URL(string: group.imageURL)!) }
            Text(group.name).modifier(TitleText())
            Text("\(group.membersCount.formattedString) followers.").modifier(SubTitleText())
            
            Divider().padding()
            
            Text(group.groupDescription ?? "Not info.").modifier(SubTitleText())
            
            Spacer()
        }.padding()
    }
}
