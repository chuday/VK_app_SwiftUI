//
//  GroupList.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 08.12.2021.
//

import SwiftUI

struct GroupList: View {
    
    let group: Group
    
    var body: some View {
        
        HStack {
            
        AvatarImage {
            Image("\(self.group.icon ?? "vk")")
        }
        
        Text(" \(group.name)")
            
        }
    }
}
