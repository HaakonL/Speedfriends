//
//  BoardViewModel.swift
//  App
//
//  Created by Haakon Langaas Lageng on 08/05/2022.
//

import SwiftUI

struct EventsView: View {
	
    var body: some View {
		VStack {
			Text("Events")
			Spacer()
		}
    }
}

struct EventsPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.events)
    }
}
