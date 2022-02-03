//
//  Group.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 15.12.2021.
//

import Foundation

struct Group: Identifiable {
    
    var id: String { name }
    let name: String
    let icon: String
}
