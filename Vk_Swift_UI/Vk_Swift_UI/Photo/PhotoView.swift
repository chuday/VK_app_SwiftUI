//
//  PhotoView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 27.12.2021.
//

import SwiftUI
import Kingfisher

struct PhotoView: View {
    @ObservedObject var viewModel: PhotosViewModel
    let columns = [
        GridItem(.flexible(minimum: 50), spacing: 2),
        GridItem(.flexible(minimum: 50), spacing: 2),
        GridItem(.flexible(minimum: 50), spacing: 2),
    ]
    
    init(viewModel: PhotosViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {

        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 2) {
                ForEach(viewModel.photos) { photo in
                    GeometryReader { geometry in
                        NavigationLink(destination: PhotoItemView(photo: photo)) {
                            KFImage(URL(string: photo.photoAvailable!.url)!)
                                .resizable()
                                .scaledToFill()
                                .frame(height: geometry.size.width)
                        }
                    }
                    .clipped()
                    .aspectRatio(1, contentMode: .fit)
                }
            }
        }
        .onAppear { viewModel.fetch() }
    }
}
