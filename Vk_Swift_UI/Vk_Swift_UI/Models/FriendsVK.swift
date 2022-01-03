//
//  FriendsVK.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 14.12.2021.
//

import Foundation

struct Groups: Codable {
    let response: GroupResponse
}

struct GroupResponse: Codable {
    let count: Int
    let items: [GroupItem]
}

class GroupItem: Codable, Identifiable {
    var id: Int = 0
    var name: String = ""
    var groupDescription: String?
    var imageURL: String = ""
    var membersCount: Int = 0

    enum CodingKeys: String, CodingKey {
        case id, name
        case groupDescription = "description"
        case imageURL = "photo_100"
        case membersCount = "members_count"
    }
}

