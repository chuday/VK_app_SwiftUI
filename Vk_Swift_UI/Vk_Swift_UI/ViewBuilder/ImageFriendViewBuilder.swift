//
//  ImageFriendViewBuilder.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 22.12.2021.
//

import SwiftUI
import Kingfisher

struct ImageFriendViewBuilder: View {
    
    @State private var isScaled = false
    var content: KFImage
 
    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
    }
 
    var body: some View {
        content
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 150)
    }
}
