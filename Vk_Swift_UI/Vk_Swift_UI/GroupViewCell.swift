//
//  GroupViewCell.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 08.12.2021.
//

import SwiftUI

struct GroupCellView: View {
    var body: some View {
        
        HStack {
            AvatarImage {
                Image("g0")
            }

            Text("Group name")
                .font(.subheadline)
            
            Spacer()
        }
    }
}

struct GroupCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GroupCellView()
        }
    }
}
