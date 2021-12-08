//
//  FriendViewCell.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 08.12.2021.
//

import SwiftUI

struct FriendCellView: View {
    var body: some View {
        
        HStack {
            AvatarImage {
                Image("f0")
            }
            
            VStack(alignment: .leading, spacing: 10) {
                
                HStack(alignment: .top, spacing: 10) {
                    Text("First name")
                        .font(.footnote)
                    Text("Last name")
                        .font(.footnote)
                }
                    Text("City")
                        .font(.footnote)
                        .fontWeight(.thin)
            }
            .lineLimit(1)

            Spacer()
        }
    }
}

struct FriendCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FriendCellView()
        }
    }
}
