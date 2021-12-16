//
//  Friend.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 15.12.2021.
//

import Foundation

struct Friend: Identifiable {
    
    var id: String { firstName }
    
    let firstName: String
    let lastName: String
    let icon: String
}
