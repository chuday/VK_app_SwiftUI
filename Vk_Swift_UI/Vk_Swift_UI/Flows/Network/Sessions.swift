//
//  Sessions.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 14.12.2021.
//

import SwiftUI

class Session: ObservableObject {
    
    static let instance = Session()
    
    private init() {}
    
    @Published var isAuthorized: Bool = false
    @Published var userId: String = ""
    @Published var token: String = ""
    
    @Published var cliendId = "7831130"
    @Published var version = "5.131"
}
