//
//  ChatsView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/05/2022.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
		ScrollView {
			VStack(alignment: .leading) {
				Text("Chatter")
					.font(.subTitle)
					.foregroundStyle(SharedStyles.titleStyle())
				
				Image("chats")
				Spacer()
			}
		}
    }
}

struct ChatsPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.chats)
    }
}
