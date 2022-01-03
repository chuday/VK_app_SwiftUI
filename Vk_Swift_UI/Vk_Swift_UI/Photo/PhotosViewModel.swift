//
//  PhotosViewModel.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 25.12.2021.
//

import SwiftUI

class PhotosViewModel: ObservableObject {
    @Published var photos: [PhotoItem] = []
    let api: PhotoService
    
    init(_ api: PhotoService) {
        self.api = api
    }
    
    public func fetch() {
        api.get { [weak self] photo in
            guard let self = self else { return }
            self.photos = photo!.response.items!
        }
    }
}
