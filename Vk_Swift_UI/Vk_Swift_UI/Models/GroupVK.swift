//
//  GroupVK.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 14.12.2021.
//

import Foundation

struct Friends: Codable {
    let response: FriendResponse
}

struct FriendResponse: Codable {
    let count: Int
    let items: [FriendItem]
}

struct FriendItem: Codable, Identifiable {
    let id: Int
    let firstName: String
    let lastName: String
    let photo100: String?
    let online: Int?
    let sex: Int?
    let lastSeen: LastSeen?
    let trackCode: String?

    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case id
        case lastName = "last_name"
        case photo100 = "photo_100"
        case online, sex
        case lastSeen = "last_seen"
        case trackCode = "track_code"
    }
}

struct LastSeen: Codable {
    let platform: Int?
    let time: TimeInterval
}
