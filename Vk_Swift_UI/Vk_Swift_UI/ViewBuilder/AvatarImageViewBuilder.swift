//
//  AvatarImageViewBuilder.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 08.12.2021.
//

import SwiftUI
import Kingfisher

struct AvatarImage: View {
    
    @State private var isScaled = false
    var content: KFImage
 
    init(@ViewBuilder content: () -> KFImage) {
        self.content = content()
    }
 
    var body: some View {
        content
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
            .clipShape(Circle())
            .scaleEffect(isScaled ? 0.75 : 1)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    self.isScaled.toggle()
                }
            }
    }
}
