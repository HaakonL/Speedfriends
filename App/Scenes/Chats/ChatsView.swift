//
//  MenuView.swift
//  App
//
//  Created by Haakon Langaas Lageng on 05/05/2022.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
		VStack {
			Text("Chats")
			Spacer()
		}
    }
}

struct ChatsPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.chats)
    }
}
