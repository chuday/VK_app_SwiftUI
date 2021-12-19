//
//  FriendViewModel.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 11.12.2021.
//

import SwiftUI

class FriendViewModel: ObservableObject {
    @Published var friends: [FriendItem] = []
    let api: FriendService
    
    init(_ api: FriendService) {
        self.api = api
    }
    
    public func fetch() {
        api.get { [weak self] friends in
            guard let self = self else { return }
            self.friends = friends!.response.items
        }
    }
}

