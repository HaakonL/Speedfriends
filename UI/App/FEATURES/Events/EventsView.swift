//
//  EventsViewModel.swift
//  App
//
//  Created by Haakon Langaas Lageng on 08/05/2022.
//

import SwiftUI

struct EventsView: View {
	
    var body: some View {
		ScrollView {
			VStack(alignment: .leading) {
				Image("event-1")
				Image("event-2")
				Image("event-3")
				Image("event-4")
				Spacer()
			}
		}
    }
}

struct EventsPreview: PreviewProvider {
    static var previews: some View {
		MainView(selectedTab: TabItem.events)
    }
}
