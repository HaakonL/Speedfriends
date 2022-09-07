//
//  GroupsView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/05/2022.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
		ScrollView {
			VStack(alignment: .leading) {
				
				Text("Dine grupper")
					.font(.subTitle)
					.foregroundStyle(SharedStyles.titleStyle())
				
				Image("groups")
				
				Spacer().frame(height: 30)
				
				Text("Andre offentlige grupper")
					.font(.subTitle)
					.foregroundStyle(SharedStyles.titleStyle())
				
				Image("groups")

				Spacer()
			}
		}
    }
}

struct GroupsPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.groups)
    }
}
