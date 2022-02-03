//
//  GroupsView.swift
//  Vk_Swift_UI
//
//  Created by Mikhail Chudaev on 11.12.2021.
//

import SwiftUI

struct GroupsView: View {
    @ObservedObject var viewModel: GroupViewModel
    
    init(viewModel: GroupViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        List(viewModel.groups) { group in
            NavigationLink(destination: GroupPageView(group: group)) {
                GroupRowView(group: group)
            }
        }
        .modifier(PlainList())
        .onAppear { viewModel.fetch() }
    }
}



