//
//  GroupsView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/05/2022.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
		VStack {
			Text("Groups")
			Spacer()
		}
    }
}

struct GroupsPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.groups)
    }
}
