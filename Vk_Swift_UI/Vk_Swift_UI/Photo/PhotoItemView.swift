//
//  PhotoItemView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 27.12.2021.
//

import SwiftUI
import Kingfisher

struct PhotoItemView: View {
    var photo: PhotoItem
    
    var body: some View {
        VStack {
            KFImage(URL(string: photo.photoAvailable!.url)!)
                .resizable()
                .frame(width: photo.photoAvailable!.width / 2, height: photo.photoAvailable!.height / 2)
                .aspectRatio(1, contentMode: .fill)
            
            Spacer().frame(height: 50.0)
            LikeButton()
        }
    }
}
