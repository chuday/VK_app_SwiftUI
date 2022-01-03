//
//  LikeButton.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 22.12.2021.
//

import Foundation
import SwiftUI

struct LikeButton : View {
    @State private var isLiked = false
    @State private var likesCount: Int = 10
    var body: some View {
        HStack {
            ZStack {
                Image(systemName: "heart.fill")
                    .opacity(isLiked ? 1 : 0)
                    .scaleEffect(isLiked ? 1.0 : 0.0)
                Image(systemName: "heart")
            }.foregroundColor(isLiked ? .red : .white)
            
            Text("\(likesCount)")
                .transition(.opacity.animation(.easeInOut(duration: 0.35)))
                .id(UUID())
        }
        .font(.system(size: 20))
        .onTapGesture {
            isLiked.toggle()
            likesCount += isLiked ? 1 : -1
        }
    }
}


